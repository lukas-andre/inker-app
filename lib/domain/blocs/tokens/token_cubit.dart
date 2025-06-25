import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/constants/token_constants.dart';
import 'package:inker_studio/domain/blocs/tokens/token_state.dart';
import 'package:inker_studio/domain/models/tokens/token_balance.dart';
import 'package:inker_studio/domain/models/tokens/token_package.dart';
import 'package:inker_studio/domain/services/tokens/token_service.dart';
import 'package:inker_studio/domain/services/tokens/token_storage_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/domain/services/event_bus/app_event_bus.dart';

class TokenCubit extends Cubit<TokenState> {
  final TokenService _tokenService;
  final TokenStorageService _tokenStorageService;
  final LocalSessionService _sessionService;
  final AppEventBus _eventBus = AppEventBus();
  
  TokenCubit({
    required TokenService tokenService,
    required TokenStorageService tokenStorageService,
    required LocalSessionService sessionService,
  }) : _tokenService = tokenService,
       _tokenStorageService = tokenStorageService,
       _sessionService = sessionService,
       super(const TokenState.initial());
  
  // Load balance on app startup or when needed
  Future<void> loadBalance() async {
    // Use maybeWhen to check state type
    final isLoading = state.maybeWhen(
      loading: () => true,
      orElse: () => false,
    );
    if (isLoading) return; // Prevent multiple simultaneous loads
    
    emit(const TokenState.loading());
    
    try {
      final balance = await _tokenService.getBalance();
      
      // Save to local storage
      final session = await _sessionService.getActiveSession();
      if (session?.user?.userTypeId != null) {
        await _tokenStorageService.saveBalance(
          balance,
          session!.user!.userTypeId.toString(),
        );
      }
      
      emit(TokenState.loaded(balance: balance));
      
      // Fire event for other parts of the app
      _eventBus.fire(TokenBalanceUpdatedEvent(balance: balance));
    } catch (e) {
      // Try to load from local storage
      final session = await _sessionService.getActiveSession();
      if (session?.user?.userTypeId != null) {
        final localBalance = await _tokenStorageService.getBalance(
          session!.user!.userTypeId.toString(),
        );
        
        if (localBalance != null) {
          emit(TokenState.error(
            message: 'Unable to load latest balance',
            lastKnownBalance: localBalance,
          ));
          return;
        }
      }
      
      emit(TokenState.error(
        message: e.toString(),
        lastKnownBalance: TokenBalance.empty(),
      ));
    }
  }
  
  // Refresh balance (force update from API)
  Future<void> refreshBalance() async {
    state.maybeWhen(
      loaded: (balance, packages, isRefreshing) {
        emit(TokenState.loaded(
          balance: balance,
          packages: packages,
          isRefreshing: true,
        ));
      },
      orElse: () {},
    );
    
    try {
      await _tokenService.refreshBalance();
      final balance = await _tokenService.getBalance();
      
      // Save to local storage
      final session = await _sessionService.getActiveSession();
      if (session?.user?.userTypeId != null) {
        await _tokenStorageService.saveBalance(
          balance,
          session!.user!.userTypeId.toString(),
        );
      }
      
      // Get current packages if we have them
      final currentPackages = state.maybeWhen(
        loaded: (_, packages, __) => packages,
        insufficientBalance: (_, __, packages) => packages,
        orElse: () => <TokenPackage>[],
      );
      
      emit(TokenState.loaded(
        balance: balance,
        packages: currentPackages,
      ));
      
      // Fire event for other parts of the app
      _eventBus.fire(TokenBalanceUpdatedEvent(balance: balance));
    } catch (e) {
      state.maybeWhen(
        loaded: (balance, packages, _) {
          emit(TokenState.loaded(
            balance: balance,
            packages: packages,
            isRefreshing: false,
          ));
        },
        orElse: () {},
      );
    }
  }
  
  // Check if user has enough tokens for an action
  bool hasEnoughTokens(int amount) {
    return state.maybeWhen(
      loaded: (balance, _, __) => balance.hasEnoughTokens(amount),
      orElse: () => false,
    );
  }
  
  // Check balance before generation (with UI feedback)
  Future<bool> checkBalanceForGeneration({int photosToGenerate = 4}) async {
    final requiredTokens = photosToGenerate * tattooGenerationCost;
    
    // Ensure we have the latest balance
    final hasLoadedState = state.maybeWhen(
      loaded: (_, __, ___) => true,
      orElse: () => false,
    );
    
    if (!hasLoadedState) {
      await loadBalance();
    }
    
    return state.maybeWhen(
      loaded: (balance, packages, _) async {
        if (!balance.hasEnoughTokens(requiredTokens)) {
          // Load packages if not already loaded
          List<TokenPackage> updatedPackages = packages;
          if (packages.isEmpty) {
            updatedPackages = await _tokenService.getPackages();
          }
          
          emit(TokenState.insufficientBalance(
            balance: balance,
            requiredAmount: requiredTokens,
            packages: updatedPackages,
          ));
          return false;
        }
        return true;
      },
      orElse: () => false,
    );
  }
  
  // Consume tokens after successful generation
  Future<void> consumeTokens(int amount) async {
    await state.maybeWhen(
      loaded: (balance, packages, isRefreshing) async {
        // Optimistically update the balance
        final success = await _tokenService.consumeTokens(amount);
        
        if (success) {
          // Update local state
          final newBalance = TokenBalance(
            balance: balance.balance - amount,
            totalPurchased: balance.totalPurchased,
            totalConsumed: balance.totalConsumed + amount,
            totalGranted: balance.totalGranted,
            lastPurchaseAt: balance.lastPurchaseAt,
          );
          
          emit(TokenState.loaded(
            balance: newBalance,
            packages: packages,
            isRefreshing: isRefreshing,
          ));
          
          // Fire event
          _eventBus.fire(TokensConsumedEvent(amount: amount, newBalance: newBalance));
          
          // Schedule a background refresh to sync with server
          Future.delayed(const Duration(seconds: 2), () {
            refreshBalance();
          });
        }
      },
      orElse: () async {},
    );
  }
  
  // Load token packages
  Future<void> loadPackages() async {
    try {
      final packages = await _tokenService.getPackages();
      
      state.maybeWhen(
        loaded: (balance, _, isRefreshing) {
          emit(TokenState.loaded(
            balance: balance,
            packages: packages,
            isRefreshing: isRefreshing,
          ));
        },
        insufficientBalance: (balance, requiredAmount, _) {
          emit(TokenState.insufficientBalance(
            balance: balance,
            requiredAmount: requiredAmount,
            packages: packages,
          ));
        },
        orElse: () {},
      );
    } catch (e) {
      // Packages are not critical, just log the error
      // In production, use proper logging
    }
  }
  
  // Purchase tokens (for future implementation)
  Future<void> purchaseTokens(String packageId, Map<String, dynamic> paymentData) async {
    emit(const TokenState.loading());
    
    try {
      final newBalance = await _tokenService.purchaseTokens(packageId, paymentData);
      
      // Save to local storage
      final session = await _sessionService.getActiveSession();
      if (session?.user?.userTypeId != null) {
        await _tokenStorageService.saveBalance(
          newBalance,
          session!.user!.userTypeId.toString(),
        );
      }
      
      emit(TokenState.loaded(balance: newBalance));
      
      // Fire event
      _eventBus.fire(TokensPurchasedEvent(newBalance: newBalance));
    } catch (e) {
      emit(TokenState.error(message: 'Purchase failed: ${e.toString()}'));
    }
  }
  
  // Clear state on logout
  Future<void> clearState() async {
    emit(const TokenState.initial());
    
    // Clear local storage
    final session = await _sessionService.getActiveSession();
    if (session?.user?.userTypeId != null) {
      await _tokenStorageService.clearBalance(
        session!.user!.userTypeId.toString(),
      );
    }
  }
}

// Events for EventBus
class TokenBalanceUpdatedEvent extends AppEvent {
  final TokenBalance balance;
  
  TokenBalanceUpdatedEvent({required this.balance});
}

class TokensConsumedEvent extends AppEvent {
  final int amount;
  final TokenBalance newBalance;
  
  TokensConsumedEvent({required this.amount, required this.newBalance});
}

class TokensPurchasedEvent extends AppEvent {
  final TokenBalance newBalance;
  
  TokensPurchasedEvent({required this.newBalance});
}