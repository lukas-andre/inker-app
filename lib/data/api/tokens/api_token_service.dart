import 'package:inker_studio/constants/token_constants.dart';
import 'package:inker_studio/data/api/http_client_service.dart';
import 'package:inker_studio/data/api/tokens/dtos/token_balance_dto.dart';
import 'package:inker_studio/data/api/tokens/dtos/token_package_dto.dart';
import 'package:inker_studio/data/api/tokens/dtos/token_transaction_dto.dart';

abstract class ApiTokenService {
  Future<TokenBalanceDto> getBalance(String token);
  Future<List<TokenPackageDto>> getPackages(String token);
  Future<TokenBalanceDto> purchaseTokens(String packageId, Map<String, dynamic> paymentData, String token);
  Future<List<TokenTransactionDto>> getTransactions(String token, {int? limit, int? offset});
}

class ApiTokenServiceImpl implements ApiTokenService {
  final HttpClientService _httpClient;

  ApiTokenServiceImpl(this._httpClient);

  @override
  Future<TokenBalanceDto> getBalance(String token) async {
    try {
      final response = await _httpClient.get<TokenBalanceDto>(
        path: tokenBalanceEndpoint,
        fromJson: (json) => TokenBalanceDto.fromJson(json),
        token: token,
      );
      
      return response;
    } catch (e) {
      // If API fails, return empty balance (0)
      // Log error - in production use proper logging
      print('Error fetching token balance: $e');
      return TokenBalanceDto.empty();
    }
  }

  @override
  Future<List<TokenPackageDto>> getPackages(String token) async {
    try {
      final response = await _httpClient.get<List<dynamic>>(
        path: tokenPackagesEndpoint,
        fromJson: (json) => json as List<dynamic>,
        token: token,
      );
      
      return response
          .map((packageJson) => TokenPackageDto.fromJson(packageJson as Map<String, dynamic>))
          .toList();
    } catch (e) {
      // Log error - in production use proper logging
      // print('Error fetching token packages: $e');
      return [];
    }
  }

  @override
  Future<TokenBalanceDto> purchaseTokens(
    String packageId, 
    Map<String, dynamic> paymentData,
    String token,
  ) async {
    try {
      final body = {
        'packageId': packageId,
        'paymentData': paymentData,
      };

      final response = await _httpClient.post<TokenBalanceDto>(
        path: tokenPurchaseEndpoint,
        body: body,
        fromJson: (json) => TokenBalanceDto.fromJson(json),
        token: token,
      );
      
      return response;
    } catch (e) {
      // Log error - in production use proper logging
      // print('Error purchasing tokens: $e');
      
      // Check if it's a 402 (Payment Required) error
      if (e.toString().contains('402')) {
        throw InsufficientTokensException('Insufficient tokens for this action');
      }
      
      rethrow;
    }
  }

  @override
  Future<List<TokenTransactionDto>> getTransactions(
    String token, {
    int? limit,
    int? offset,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (limit != null) queryParams['limit'] = limit.toString();
      if (offset != null) queryParams['offset'] = offset.toString();

      final response = await _httpClient.get<List<dynamic>>(
        path: tokenTransactionsEndpoint,
        queryParams: queryParams,
        fromJson: (json) => json as List<dynamic>,
        token: token,
      );
      
      return response
          .map((transactionJson) => TokenTransactionDto.fromJson(transactionJson as Map<String, dynamic>))
          .toList();
    } catch (e) {
      // Log error - in production use proper logging
      // print('Error fetching token transactions: $e');
      return [];
    }
  }
}

// Custom exception for insufficient tokens
class InsufficientTokensException implements Exception {
  final String message;
  InsufficientTokensException(this.message);
  
  @override
  String toString() => message;
}