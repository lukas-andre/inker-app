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
    on<OfferMessageEvent>((event, emit) async {
      await event.when(
        loadMessages: (quotationId, offerId) async =>
            _loadMessages(emit, quotationId, offerId),
        sendMessage: (quotationId, offerId, message, image) async =>
            _sendMessage(emit, quotationId, offerId, message, image),
        refreshMessages: () async => _refreshMessages(emit),
      );
    });
  }

  Future<void> _loadMessages(
    Emitter<OfferMessageState> emit,
    String quotationId,
    String offerId,
  ) async {
    emit(const OfferMessageState.loading());
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const OfferMessageState.error('No active session found'));
        return;
      }

      // Store current IDs for refresh
      _currentQuotationId = quotationId;
      _currentOfferId = offerId;

      // Use the new direct method to get the offer by ID
      final offer = await _quotationService.getQuotationOffer(
        token: token,
        offerId: offerId,
      );

      if (offer == QuotationOfferListItemDto.empty()) {
        emit(const OfferMessageState.error('Offer not found'));
        return;
      }

      // Get messages from the offer
      final messages = offer.messages;

      emit(OfferMessageState.loaded(
        messages: messages ?? [],
        quotationId: quotationId,
        offerId: offerId,
      ));
    } catch (e) {
      emit(OfferMessageState.error(e.toString()));
    }
  }

  Future<void> _sendMessage(
    Emitter<OfferMessageState> emit,
    String quotationId,
    String offerId,
    String message,
    XFile? image,
  ) async {
    // Keep current state if it's loaded, to maintain messages during sending
    final currentState = state;
    if (currentState is! _Loaded) {
      emit(const OfferMessageState.sending());
    } else {
      // Show sending state but keep the messages
      // This would need a modified state to show sending indicator while keeping messages
      // For now, we'll just keep the current state
    }

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const OfferMessageState.error('No active session found'));
        return;
      }

      // Call the API to send the message
      final newMessage = await _quotationService.sendOfferMessage(
        token: token,
        quotationId: quotationId,
        offerId: offerId,
        messageText: message,
        image: image,
      );

      // After successfully sending, reload the messages to get the updated list
      await _loadMessages(emit, quotationId, offerId);
    } catch (e) {
      emit(OfferMessageState.error(e.toString()));
    }
  }

  Future<void> _refreshMessages(Emitter<OfferMessageState> emit) async {
    if (_currentQuotationId != null && _currentOfferId != null) {
      await _loadMessages(emit, _currentQuotationId!, _currentOfferId!);
    }
  }
} 