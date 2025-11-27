import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/services/consent/consent_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'consent_status_event.dart';
import 'consent_status_state.dart';

class ConsentStatusBloc extends Bloc<ConsentStatusEvent, ConsentStatusState> {
  final ConsentService _consentService;
  final LocalSessionService _sessionService;

  ConsentStatusBloc({
    required ConsentService consentService,
    required LocalSessionService sessionService,
  })  : _consentService = consentService,
        _sessionService = sessionService,
        super(const ConsentStatusState.initial()) {
    on<ConsentStatusEvent>(_onEvent);
  }

  Future<void> _onEvent(ConsentStatusEvent event, Emitter<ConsentStatusState> emit) async {
    print('ConsentStatusBloc: Received event: $event');
    await event.map(
      checkStatus: (e) => _onCheckStatus(e.eventId, emit),
      acceptTerms: (e) => _onAcceptTerms(e.eventId, e.digitalSignature, emit),
    );
  }

  Future<void> _onCheckStatus(String eventId, Emitter<ConsentStatusState> emit) async {
    print('ConsentStatusBloc: Checking status for event: $eventId');
    emit(const ConsentStatusState.loading());

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        print('ConsentStatusBloc: No active session found');
        emit(const ConsentStatusState.error('No active session found'));
        return;
      }

      final response = await _consentService.checkConsentStatus(eventId, token);
      print('ConsentStatusBloc: Status check response: $response');
      
      emit(ConsentStatusState.loaded(
        eventId: eventId,
        hasSigned: response['hasSigned'] as bool,
        signedAt: response['signedAt'] as String?,
        templateTitle: response['templateTitle'] as String?,
      ));
    } catch (e) {
      print('ConsentStatusBloc: Error checking status: $e');
      emit(ConsentStatusState.error(e.toString()));
    }
  }

  Future<void> _onAcceptTerms(String eventId, String digitalSignature, Emitter<ConsentStatusState> emit) async {
    print('ConsentStatusBloc: Accepting terms for event: $eventId');
    emit(const ConsentStatusState.acceptingTerms());

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        print('ConsentStatusBloc: No active session found');
        emit(const ConsentStatusState.error('No active session found'));
        return;
      }

      print('ConsentStatusBloc: Sending accept terms request');
      final response = await _consentService.acceptDefaultTerms(
        eventId,
        digitalSignature,
        token,
      );
      print('ConsentStatusBloc: Accept terms response: $response');

      print('ConsentStatusBloc: Emitting termsAccepted state');
      emit(const ConsentStatusState.termsAccepted());
      
      // Refresh status after accepting terms
      print('ConsentStatusBloc: Refreshing status');
      add(ConsentStatusEvent.checkStatus(eventId));
    } catch (e) {
      print('ConsentStatusBloc: Error accepting terms: $e');
      emit(ConsentStatusState.error(e.toString()));
    }
  }
} 