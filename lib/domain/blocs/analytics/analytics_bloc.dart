import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/analytics/analytics_response.dart';
import 'package:inker_studio/domain/models/analytics/content_type.dart';
import 'package:inker_studio/domain/models/analytics/interaction_type.dart';
import 'package:inker_studio/domain/models/analytics/view_source.dart';
import 'package:inker_studio/domain/services/analytics/analytics_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';

part 'analytics_event.dart';
part 'analytics_state.dart';
part 'analytics_bloc.freezed.dart';

class AnalyticsBloc extends Bloc<AnalyticsEvent, AnalyticsState> {
  final AnalyticsService _analyticsService;
  final LocalSessionService _sessionService;

  AnalyticsBloc({
    required AnalyticsService analyticsService,
    required LocalSessionService sessionService,
  })  : _analyticsService = analyticsService,
        _sessionService = sessionService,
        super(const AnalyticsState.initial()) {
    on<AnalyticsEvent>(_onEvent);
  }

  Future<void> _onEvent(
    AnalyticsEvent event,
    Emitter<AnalyticsState> emit,
  ) async {
    await event.map(
      recordContentView: (e) => _recordContentView(e, emit),
      recordContentLike: (e) => _recordContentLike(e, emit),
      recordContentImpression: (e) => _recordContentImpression(e, emit),
      recordArtistView: (e) => _recordArtistView(e, emit),
      recordArtistFollow: (e) => _recordArtistFollow(e, emit),
      getContentMetrics: (e) => _getContentMetrics(e, emit),
      getArtistMetrics: (e) => _getArtistMetrics(e, emit),
      getBatchContentMetrics: (e) => _getBatchContentMetrics(e, emit),
    );
  }

  Future<void> _recordContentView(
    _RecordContentView event,
    Emitter<AnalyticsState> emit,
  ) async {
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const AnalyticsState.error(message: 'No active session'));
        return;
      }
      
      await _analyticsService.recordInteraction(
        contentId: event.contentId,
        contentType: event.contentType,
        interactionType: InteractionType.view,
        viewSource: event.viewSource,
        viewDurationSeconds: event.viewDurationSeconds,
        token: session.accessToken,
      );
      // No state change needed for recording views
    } catch (e) {
      emit(AnalyticsState.error(message: 'Failed to record view: $e'));
    }
  }

  Future<void> _recordContentLike(
    _RecordContentLike event,
    Emitter<AnalyticsState> emit,
  ) async {
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const AnalyticsState.error(message: 'No active session'));
        return;
      }
      
      final bool? isLiked = await _analyticsService.recordInteraction(
        contentId: event.contentId,
        contentType: event.contentType,
        interactionType: InteractionType.like,
        token: session.accessToken,
      );

      if (isLiked != null) {
        emit(AnalyticsState.contentLikeUpdated(
          contentId: event.contentId,
          contentType: event.contentType,
          isLiked: isLiked,
        ));
      }
    } catch (e) {
      emit(AnalyticsState.error(message: 'Failed to record like: $e'));
    }
  }

  Future<void> _recordContentImpression(
    _RecordContentImpression event,
    Emitter<AnalyticsState> emit,
  ) async {
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const AnalyticsState.error(message: 'No active session'));
        return;
      }
      
      await _analyticsService.recordInteraction(
        contentId: event.contentId,
        contentType: event.contentType,
        interactionType: InteractionType.impression,
        token: session.accessToken,
      );
      // No state change needed for recording impressions
    } catch (e) {
      emit(AnalyticsState.error(message: 'Failed to record impression: $e'));
    }
  }

  Future<void> _recordArtistView(
    _RecordArtistView event,
    Emitter<AnalyticsState> emit,
  ) async {
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const AnalyticsState.error(message: 'No active session'));
        return;
      }
      
      await _analyticsService.recordArtistView(event.artistId, token: session.accessToken);
      // No state change needed for recording artist views
    } catch (e) {
      emit(AnalyticsState.error(message: 'Failed to record artist view: $e'));
    }
  }

  Future<void> _recordArtistFollow(
    _RecordArtistFollow event,
    Emitter<AnalyticsState> emit,
  ) async {
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const AnalyticsState.error(message: 'No active session'));
        return;
      }
      
      await _analyticsService.recordArtistFollow(
        event.artistId,
        fromContentView: event.fromContentView,
        token: session.accessToken,
      );
      // No state change needed for recording follows
    } catch (e) {
      emit(AnalyticsState.error(message: 'Failed to record follow: $e'));
    }
  }

  Future<void> _getContentMetrics(
    _GetContentMetrics event,
    Emitter<AnalyticsState> emit,
  ) async {
    try {
      emit(const AnalyticsState.loading());
      
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const AnalyticsState.error(message: 'No active session'));
        return;
      }
      
      final metrics = await _analyticsService.getContentMetrics(
        event.contentId,
        event.contentType,
        token: session.accessToken,
      );
      
      emit(AnalyticsState.contentMetricsLoaded(metrics: metrics));
    } catch (e) {
      emit(AnalyticsState.error(message: 'Failed to get content metrics: $e'));
    }
  }

  Future<void> _getArtistMetrics(
    _GetArtistMetrics event,
    Emitter<AnalyticsState> emit,
  ) async {
    try {
      emit(const AnalyticsState.loading());
      
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const AnalyticsState.error(message: 'No active session'));
        return;
      }
      
      final metrics = await _analyticsService.getArtistMetrics(event.artistId, token: session.accessToken);
      
      emit(AnalyticsState.artistMetricsLoaded(metrics: metrics));
    } catch (e) {
      emit(AnalyticsState.error(message: 'Failed to get artist metrics: $e'));
    }
  }

  Future<void> _getBatchContentMetrics(
    _GetBatchContentMetrics event,
    Emitter<AnalyticsState> emit,
  ) async {
    try {
      emit(const AnalyticsState.loading());
      
      final metrics = await _analyticsService.getBatchContentMetrics(
        event.contentIds,
        event.contentType,
      );
      
      emit(AnalyticsState.batchContentMetricsLoaded(metrics: metrics));
    } catch (e) {
      emit(AnalyticsState.error(message: 'Failed to get batch metrics: $e'));
    }
  }
} 