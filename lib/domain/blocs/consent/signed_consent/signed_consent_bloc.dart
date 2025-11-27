import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/consent/signed_consent.dart';
import 'package:inker_studio/domain/models/consent/form_template.dart';
import 'package:inker_studio/domain/services/consent/consent_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';

part 'signed_consent_event.dart';
part 'signed_consent_state.dart';
part 'signed_consent_bloc.freezed.dart';

class SignedConsentBloc extends Bloc<SignedConsentEvent, SignedConsentState> {
  final ConsentService _consentService;
  final LocalSessionService _sessionService;

  SignedConsentBloc({
    required ConsentService consentService,
    required LocalSessionService sessionService,
  })  : _consentService = consentService,
        _sessionService = sessionService,
        super(const SignedConsentState.initial()) {
    on<_Started>(_onStarted);
    on<_Loaded>(_onLoaded);
    on<_LoadRequiredConsentsForEvent>(_onLoadRequiredConsentsForEvent);
    on<_LoadSignedConsentsForEvent>(_onLoadSignedConsentsForEvent);
    on<_SignConsent>(_onSignConsent);
    on<_CheckConsentStatus>(_onCheckConsentStatus);
  }

  Future<void> _onStarted(_Started event, Emitter<SignedConsentState> emit) async {
    emit(const SignedConsentState.initial());
  }

  Future<void> _onLoaded(_Loaded event, Emitter<SignedConsentState> emit) async {
    emit(const SignedConsentState.loading());
  }

  Future<void> _onLoadRequiredConsentsForEvent(
    _LoadRequiredConsentsForEvent event,
    Emitter<SignedConsentState> emit,
  ) async {
    emit(const SignedConsentState.loading());
    
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const SignedConsentState.error('No authentication token found'));
        return;
      }

      final requiredConsents = await _consentService.getRequiredConsentsForEvent(
        event.eventId, 
        token,
      );
      
      final signedConsents = await _consentService.getSignedConsentsForEventByUser(
        event.eventId,
        event.userId,
        token,
      );
      
      emit(SignedConsentState.loaded(
        eventId: event.eventId,
        userId: event.userId,
        requiredConsents: requiredConsents,
        signedConsents: signedConsents,
      ));
    } catch (e) {
      emit(SignedConsentState.error('Error loading consents: ${e.toString()}'));
    }
  }

  Future<void> _onLoadSignedConsentsForEvent(
    _LoadSignedConsentsForEvent event,
    Emitter<SignedConsentState> emit,
  ) async {
    emit(const SignedConsentState.loading());
    
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const SignedConsentState.error('No authentication token found'));
        return;
      }

      final signedConsents = await _consentService.getSignedConsentsForEvent(
        event.eventId, 
        token,
      );
      
      emit(SignedConsentState.loaded(
        eventId: event.eventId,
        userId: event.userId ?? '',
        requiredConsents: const [],
        signedConsents: signedConsents,
      ));
    } catch (e) {
      emit(SignedConsentState.error('Error loading signed consents: ${e.toString()}'));
    }
  }

  Future<void> _onSignConsent(
    _SignConsent event,
    Emitter<SignedConsentState> emit,
  ) async {
    emit(const SignedConsentState.loading());
    
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const SignedConsentState.error('No authentication token found'));
        return;
      }

      final signedConsent = await _consentService.signConsent(event.dto, token);
      
      // Update the current state with the new signed consent
      final currentState = state;
      if (currentState is SignedConsentLoaded) {
        final updatedSignedConsents = [...currentState.signedConsents, signedConsent];
        
        emit(SignedConsentState.loaded(
          eventId: currentState.eventId,
          userId: currentState.userId,
          requiredConsents: currentState.requiredConsents,
          signedConsents: updatedSignedConsents,
        ));
      }
    } catch (e) {
      emit(SignedConsentState.error('Error signing consent: ${e.toString()}'));
    }
  }

  Future<void> _onCheckConsentStatus(
    _CheckConsentStatus event,
    Emitter<SignedConsentState> emit,
  ) async {
    emit(const SignedConsentState.loading());
    
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const SignedConsentState.error('No authentication token found'));
        return;
      }

      final hasSignedAll = await _consentService.hasUserSignedRequiredConsents(
        event.eventId,
        event.userId,
        token,
      );
      
      final currentState = state;
      if (currentState is SignedConsentLoaded) {
        emit(currentState.copyWith(hasSignedAllRequired: hasSignedAll));
      }
    } catch (e) {
      emit(SignedConsentState.error('Error checking consent status: ${e.toString()}'));
    }
  }
} 