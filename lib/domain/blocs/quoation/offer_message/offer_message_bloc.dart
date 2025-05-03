import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/services/quotation/quotation_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';

part 'offer_message_event.dart';
part 'offer_message_state.dart';
part 'offer_message_bloc.freezed.dart';

class OfferMessageBloc extends Bloc<OfferMessageEvent, OfferMessageState> {
  final QuotationService _quotationService;
  final LocalSessionService _sessionService;
  String? _currentQuotationId;
  String? _currentOfferId;

  OfferMessageBloc({
    required QuotationService quotationService,
    required LocalSessionService sessionService,
  })  : _quotationService = quotationService,
        _sessionService = sessionService,
        super(const OfferMessageState.initial()) {
    on<LoadMessages>(_onLoadMessages);
    on<SendMessage>(_onSendMessage);
    on<RefreshMessages>(_onRefreshMessages);
  }

  Future<void> _onLoadMessages(
    LoadMessages event,
    Emitter<OfferMessageState> emit,
  ) async {
    emit(const OfferMessageState.loading());
    _currentQuotationId = event.quotationId;
    _currentOfferId = event.offerId;
    await _loadMessages(emit, event.quotationId, event.offerId);
  }

  Future<void> _loadMessages(
    Emitter<OfferMessageState> emit,
    String quotationId,
    String offerId,
  ) async {
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const OfferMessageState.error('No active session found'));
        return;
      }
      final offer = await _quotationService.getQuotationOffer(
        token: token,
        offerId: offerId,
      );
      emit(OfferMessageState.loaded(
        messages: offer.messages ?? [],
        quotationId: quotationId,
        offerId: offerId,
      ));
    } catch (e) {
      emit(OfferMessageState.error('Failed to load messages: ${e.toString()}'));
    }
  }

  Future<void> _onSendMessage(
    SendMessage event,
    Emitter<OfferMessageState> emit,
  ) async {
    await state.maybeWhen(
      loaded: (messages, quotationId, offerId, isRefreshing, _) async {
        emit(OfferMessageState.loaded(
          messages: messages,
          quotationId: quotationId,
          offerId: offerId,
          isRefreshing: isRefreshing, // Preserve refreshing state if applicable
          isSending: true,
        ));

        try {
          final token = await _sessionService.getActiveSessionToken();
          if (token == null) {
            // Revert state if session is lost mid-send
            emit(OfferMessageState.loaded(
              messages: messages,
              quotationId: quotationId,
              offerId: offerId,
              isRefreshing: isRefreshing,
              isSending: false, // Sending failed
            ));
            emit(const OfferMessageState.error(
                'No active session found')); // Optionally emit error
            return;
          }

          final session = await _sessionService.getActiveSession();
          final userType = session?.user?.userType;
          final userId = session?.user?.id;

          // Optimistically add the message
          final optimisticMessage = OfferMessageDto(
            id: 'temp-${DateTime.now().millisecondsSinceEpoch}',
            senderId: userId ?? 'unknown',
            senderType: userType == 'ARTIST'
                ? QuotationRole.artist
                : QuotationRole.customer,
            message: event.message,
            imageUrl: event.image?.path,
            timestamp: DateTime.now(),
          );

          final updatedMessages = List<OfferMessageDto>.from(messages)
            ..add(optimisticMessage);

          emit(OfferMessageState.loaded(
            messages: updatedMessages,
            quotationId: quotationId,
            offerId: offerId,
            isRefreshing: isRefreshing,
            isSending: false,
          ));

          await _quotationService.sendOfferMessage(
            token: token,
            quotationId: quotationId,
            offerId: offerId,
            messageText: event.message,
            image: event.image,
          );

          add(const RefreshMessages());
        } catch (e) {
          emit(OfferMessageState.loaded(
            messages: messages,
            quotationId: quotationId,
            offerId: offerId,
            isRefreshing: isRefreshing,
            isSending: false,
          ));
          emit(OfferMessageState.error(
              'Failed to send message: ${e.toString()}'));
        }
      },
      orElse: () async {
        if (_currentQuotationId != null && _currentOfferId != null) {
          emit(const OfferMessageState.error(
              "Cannot send message in current state."));
        } else {
          emit(const OfferMessageState.error(
              "Cannot send message: context unavailable."));
        }
      },
    );
  }

  Future<void> _onRefreshMessages(
    RefreshMessages event,
    Emitter<OfferMessageState> emit,
  ) async {
    await state.mapOrNull(
      loaded: (loadedState) async {
        if (loadedState.isRefreshing || loadedState.isSending) return;

        emit(loadedState.copyWith(isRefreshing: true));

        try {
          final token = await _sessionService.getActiveSessionToken();
          if (token == null) {
            emit(loadedState.copyWith(isRefreshing: false));
            emit(const OfferMessageState.error('No active session found'));
            return;
          }

          final offer = await _quotationService.getQuotationOffer(
            token: token,
            offerId: loadedState.offerId,
          );
          emit(OfferMessageState.loaded(
            messages: offer.messages ?? [],
            quotationId: loadedState.quotationId,
            offerId: loadedState.offerId,
            isRefreshing: false,
            isSending: false,
          ));
        } catch (e) {
          emit(loadedState.copyWith(
            isRefreshing: false,
          ));
        }
      },
    );
    if (state is! _Loaded &&
        _currentQuotationId != null &&
        _currentOfferId != null) {
      add(LoadMessages(
          quotationId: _currentQuotationId!, offerId: _currentOfferId!));
    }
  }
}
