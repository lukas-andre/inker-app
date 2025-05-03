import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/quotation/dtos/participating_quotations_response.dart';
import 'package:inker_studio/domain/services/quotation/quotation_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';

part 'participating_quotations_event.dart';
part 'participating_quotations_state.dart';
part 'participating_quotations_bloc.freezed.dart';

class ParticipatingQuotationsBloc
    extends Bloc<ParticipatingQuotationsEvent, ParticipatingQuotationsState> {
  final QuotationService _quotationService;
  final LocalSessionService _sessionService;

  ParticipatingQuotationsBloc({
    required QuotationService quotationService,
    required LocalSessionService sessionService,
  })  : _quotationService = quotationService,
        _sessionService = sessionService,
        super(const ParticipatingQuotationsState.initial()) {
    on<ParticipatingQuotationsEvent>((event, emit) async {
      await event.when(
        loadInitial: () async {
          await _loadQuotations(emit, isRefresh: false);
        },
        refresh: () async {
          await _loadQuotations(emit, isRefresh: true);
        },
        loadMore: () async {
          await _loadMoreQuotations(emit);
        },
      );
    });
  }

  Future<void> _loadQuotations(
    Emitter<ParticipatingQuotationsState> emit, {
    required bool isRefresh,
  }) async {
    try {
      if (!isRefresh) {
        emit(const ParticipatingQuotationsState.loading());
      } else {
        emit(ParticipatingQuotationsState.refreshing(
          items: state.items,
          currentPage: state.currentPage,
          totalItems: state.totalItems,
        ));
      }

      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ParticipatingQuotationsState.error(
          message: 'No authentication token available',
        ));
        return;
      }

      final response = await _quotationService.getParticipatingQuotations(
        token: session.accessToken,
        page: 1,
        limit: 10,
      );

      emit(ParticipatingQuotationsState.loaded(
        items: response.items,
        currentPage: 1,
        totalItems: response.total,
      ));
    } catch (e) {
      emit(ParticipatingQuotationsState.error(
        message: 'Failed to load participating quotations: $e',
      ));
    }
  }

  Future<void> _loadMoreQuotations(
    Emitter<ParticipatingQuotationsState> emit,
  ) async {
    if (state.isLoading || state.isLoadingMore) {
      return;
    }

    final nextPage = state.currentPage + 1;
    final currentItems = List<ParticipatingQuotationItemDto>.from(state.items);

    try {
      emit(ParticipatingQuotationsState.loadingMore(
        items: currentItems,
        currentPage: state.currentPage,
        totalItems: state.totalItems,
      ));

      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ParticipatingQuotationsState.error(
          message: 'No authentication token available',
        ));
        return;
      }

      final response = await _quotationService.getParticipatingQuotations(
        token: session.accessToken,
        page: nextPage,
        limit: 10,
      );

      if (response.items.isEmpty) {
        emit(ParticipatingQuotationsState.loaded(
          items: currentItems,
          currentPage: state.currentPage,
          totalItems: state.totalItems,
        ));
        return;
      }

      currentItems.addAll(response.items);

      emit(ParticipatingQuotationsState.loaded(
        items: currentItems,
        currentPage: nextPage,
        totalItems: response.total,
      ));
    } catch (e) {
      emit(ParticipatingQuotationsState.error(
        message: 'Failed to load more participating quotations: $e',
      ));
    }
  }
} 