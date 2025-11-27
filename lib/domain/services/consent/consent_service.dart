import 'package:inker_studio/domain/models/consent/form_template.dart';
import 'package:inker_studio/domain/models/consent/signed_consent.dart';

abstract class ConsentService {
  // Form Templates
  Future<FormTemplate> createFormTemplate(CreateFormTemplateDto dto, String token);
  Future<FormTemplate> getFormTemplateById(String templateId, String token);
  Future<List<FormTemplate>> getFormTemplatesForArtist(String artistId, String token, {bool? isActive});
  Future<FormTemplate> updateFormTemplate(String templateId, CreateFormTemplateDto dto, String token);
  Future<void> deleteFormTemplate(String templateId, String token);
  
  // Signed Consents
  Future<SignedConsent> signConsent(SignConsentDto dto, String token);
  Future<SignedConsent> getSignedConsentById(String signatureId, String token);
  Future<List<SignedConsent>> getSignedConsentsForEvent(String eventId, String token); 
  Future<List<SignedConsent>> getSignedConsentsForEventByUser(String eventId, String userId, String token);
  
  // Required consents for events
  Future<List<FormTemplate>> getRequiredConsentsForEvent(String eventId, String token);
  Future<bool> hasUserSignedRequiredConsents(String eventId, String userId, String token);

  // MVP Consent Methods
  Future<Map<String, dynamic>> checkConsentStatus(String eventId, String token);
  Future<Map<String, dynamic>> acceptDefaultTerms(String eventId, String digitalSignature, String token);
} 