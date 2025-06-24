import 'package:inker_studio/data/api/tokens/api_token_service.dart';
import 'package:inker_studio/domain/models/tokens/token_balance.dart';
import 'package:inker_studio/domain/models/tokens/token_package.dart';
import 'package:inker_studio/domain/models/tokens/token_transaction.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';

abstract class TokenService {
  Future<TokenBalance> getBalance();
  Future<List<TokenPackage>> getPackages();
  Future<TokenBalance> purchaseTokens(String packageId, Map<String, dynamic> paymentData);
  Future<List<TokenTransaction>> getTransactions({int? limit, int? offset});
  Future<bool> consumeTokens(int amount);
  Future<void> refreshBalance();
  
  // Getters for current state
  TokenBalance? get currentBalance;
  bool get hasValidBalance;
}

class TokenServiceImpl implements TokenService {
  final ApiTokenService _apiTokenService;
  final LocalSessionService _sessionService;
  
  // Cached balance
  TokenBalance? _cachedBalance;
  DateTime? _lastFetchTime;
  
  // Cache duration
  static const Duration _cacheDuration = Duration(minutes: 5);
  
  TokenServiceImpl({
    required ApiTokenService apiTokenService,
    required LocalSessionService sessionService,
  }) : _apiTokenService = apiTokenService,
       _sessionService = sessionService;
  
  @override
  TokenBalance? get currentBalance => _cachedBalance;
  
  @override
  bool get hasValidBalance => _cachedBalance != null;
  
  // Check if cache is still valid
  bool get _isCacheValid {
    if (_cachedBalance == null || _lastFetchTime == null) return false;
    return DateTime.now().difference(_lastFetchTime!) < _cacheDuration;
  }
  
  @override
  Future<TokenBalance> getBalance() async {
    // Return cached balance if still valid
    if (_isCacheValid && _cachedBalance != null) {
      return _cachedBalance!;
    }
    
    final session = await _sessionService.getActiveSession();
    if (session == null) {
      return TokenBalance.empty();
    }
    
    try {
      final dto = await _apiTokenService.getBalance(session.accessToken);
      _cachedBalance = TokenBalance.fromDto(dto);
      _lastFetchTime = DateTime.now();
      return _cachedBalance!;
    } catch (e) {
      // Return empty balance on error
      _cachedBalance = TokenBalance.empty();
      return _cachedBalance!;
    }
  }
  
  @override
  Future<void> refreshBalance() async {
    // Force refresh by invalidating cache
    _cachedBalance = null;
    _lastFetchTime = null;
    await getBalance();
  }
  
  @override
  Future<List<TokenPackage>> getPackages() async {
    final session = await _sessionService.getActiveSession();
    if (session == null) {
      return [];
    }
    
    try {
      final dtos = await _apiTokenService.getPackages(session.accessToken);
      return dtos.map((dto) => TokenPackage.fromDto(dto)).toList();
    } catch (e) {
      return [];
    }
  }
  
  @override
  Future<TokenBalance> purchaseTokens(
    String packageId,
    Map<String, dynamic> paymentData,
  ) async {
    final session = await _sessionService.getActiveSession();
    if (session == null) {
      throw Exception('No active session');
    }
    
    try {
      final dto = await _apiTokenService.purchaseTokens(
        packageId,
        paymentData,
        session.accessToken,
      );
      
      // Update cached balance
      _cachedBalance = TokenBalance.fromDto(dto);
      _lastFetchTime = DateTime.now();
      
      return _cachedBalance!;
    } catch (e) {
      rethrow;
    }
  }
  
  @override
  Future<List<TokenTransaction>> getTransactions({
    int? limit,
    int? offset,
  }) async {
    final session = await _sessionService.getActiveSession();
    if (session == null) {
      return [];
    }
    
    try {
      final dtos = await _apiTokenService.getTransactions(
        session.accessToken,
        limit: limit,
        offset: offset,
      );
      return dtos.map((dto) => TokenTransaction.fromDto(dto)).toList();
    } catch (e) {
      return [];
    }
  }
  
  @override
  Future<bool> consumeTokens(int amount) async {
    // First check if we have enough tokens
    final balance = await getBalance();
    
    if (!balance.hasEnoughTokens(amount)) {
      return false;
    }
    
    // The actual consumption will be handled by the backend
    // when the tattoo generation API is called.
    // We'll just refresh the balance after the operation
    
    // For now, we optimistically update the cached balance
    if (_cachedBalance != null) {
      _cachedBalance = TokenBalance(
        balance: _cachedBalance!.balance - amount,
        totalPurchased: _cachedBalance!.totalPurchased,
        totalConsumed: _cachedBalance!.totalConsumed + amount,
        totalGranted: _cachedBalance!.totalGranted,
        lastPurchaseAt: _cachedBalance!.lastPurchaseAt,
      );
    }
    
    return true;
  }
}