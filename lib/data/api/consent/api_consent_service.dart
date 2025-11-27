import 'package:inker_studio/data/api/http_client_service.dart';
import 'package:inker_studio/domain/models/consent/form_template.dart';
import 'package:inker_studio/domain/models/consent/signed_consent.dart';
import 'package:inker_studio/domain/services/consent/consent_service.dart';

class ApiConsentService implements ConsentService {
  final HttpClientService _httpClient;

  ApiConsentService(this._httpClient);

  @override
  Future<FormTemplate> createFormTemplate(CreateFormTemplateDto dto, String token) async {
    final response = await _httpClient.post<Map<String, dynamic>>(
      path: 'consents/templates',
      body: dto.toJson(),
      token: token,
      fromJson: (json) => json,
    );
    return FormTemplate.fromJson(response);
  }

  @override
  Future<FormTemplate> getFormTemplateById(String templateId, String token) async {
    final response = await _httpClient.get<Map<String, dynamic>>(
      path: 'consents/templates/$templateId',
      token: token,
      fromJson: (json) => json,
    );
    return FormTemplate.fromJson(response);
  }

  @override
  Future<List<FormTemplate>> getFormTemplatesForArtist(String artistId, String token, {bool? isActive}) async {
    print('ApiConsentService: Getting templates for artist: $artistId, isActive: $isActive');
    final queryParams = <String, dynamic>{};
    if (isActive != null) {
      queryParams['isActive'] = isActive.toString();
    }
    
    try {
      print('ApiConsentService: Making HTTP request to consents/templates/artist/$artistId');
      final response = await _httpClient.getList<FormTemplate>(
        path: 'consents/templates/artist/$artistId',
        token: token,
        queryParams: queryParams,
        fromJson: (json) => FormTemplate.fromJson(json),
      );
      
      print('ApiConsentService: Received response with ${response.length} templates');
      return response;
    } catch (e) {
      print('ApiConsentService: Error getting templates: $e');
      rethrow;
    }
  }

  @override
  Future<FormTemplate> updateFormTemplate(String templateId, CreateFormTemplateDto dto, String token) async {
    final response = await _httpClient.put<Map<String, dynamic>>(
      path: 'consents/templates/$templateId',
      body: dto.toJson(),
      token: token,
      fromJson: (json) => json,
    );
    return FormTemplate.fromJson(response);
  }

  @override
  Future<void> deleteFormTemplate(String templateId, String token) async {
    await _httpClient.delete(
      path: 'consents/templates/$templateId',
      token: token,
      body: {},
    );
  }

  @override
  Future<SignedConsent> signConsent(SignConsentDto dto, String token) async {
    final response = await _httpClient.post<Map<String, dynamic>>(
      path: 'consents/signatures',
      body: dto.toJson(),
      token: token,
      fromJson: (json) => json,
    );
    return SignedConsent.fromJson(response);
  }

  @override
  Future<SignedConsent> getSignedConsentById(String signatureId, String token) async {
    final response = await _httpClient.get<Map<String, dynamic>>(
      path: 'consents/signatures/$signatureId',
      token: token,
      fromJson: (json) => json,
    );
    return SignedConsent.fromJson(response);
  }

  @override
  Future<List<SignedConsent>> getSignedConsentsForEvent(String eventId, String token) async {
    final response = await _httpClient.getList<SignedConsent>(
      path: 'consents/signatures/event/$eventId',
      token: token,
      fromJson: (json) => SignedConsent.fromJson(json),
    );
    
    return response;
  }

  @override
  Future<List<SignedConsent>> getSignedConsentsForEventByUser(String eventId, String userId, String token) async {
    final response = await _httpClient.getList<SignedConsent>(
      path: 'consents/signatures/event/$eventId/user/$userId',
      token: token,
      fromJson: (json) => SignedConsent.fromJson(json),
    );
    
    return response;
  }

  @override
  Future<List<FormTemplate>> getRequiredConsentsForEvent(String eventId, String token) async {
    final response = await _httpClient.getList<FormTemplate>(
      path: 'consents/templates/event/$eventId/required',
      token: token,
      fromJson: (json) => FormTemplate.fromJson(json),
    );
    
    return response;
  }

  @override
  Future<bool> hasUserSignedRequiredConsents(String eventId, String userId, String token) async {
    final response = await _httpClient.get<Map<String, dynamic>>(
      path: 'consents/signatures/event/$eventId/user/$userId/status',
      token: token,
      fromJson: (json) => json,
    );
    
    return response['hasSignedAll'] as bool? ?? false;
  }

  @override
  Future<Map<String, dynamic>> checkConsentStatus(String eventId, String token) async {
    final response = await _httpClient.get<Map<String, dynamic>>(
      path: 'consents/check-consent-status/$eventId',
      token: token,
      fromJson: (json) => json,
    );
    return response;
  }

  @override
  Future<Map<String, dynamic>> acceptDefaultTerms(String eventId, String digitalSignature, String token) async {
    try {
      final response = await _httpClient.post<Map<String, dynamic>>(
        path: 'consents/accept-default-terms',
        body: {
          'eventId': eventId,
          'digitalSignature': digitalSignature,
        },
        token: token,
        fromJson: (json) => json.isEmpty ? {'success': true} : json,
      );
      return response;
    } catch (e) {
      print('ApiConsentService: Error accepting terms: $e');
      rethrow;
    }
  }
} 