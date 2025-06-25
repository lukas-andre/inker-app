# Token System Implementation TODO

## 🎯 Quick Reference Implementation Checklist

### 📦 Phase 1: Models & DTOs
- [x] Create `/lib/data/api/tokens/dtos/token_balance_dto.dart` ✅
  ```dart
  @JsonSerializable()
  class TokenBalanceDto {
    final int balance;
    final int totalPurchased;
    final int totalConsumed;
    final int totalGranted;
    final DateTime? lastPurchaseAt;
  }
  ```
- [x] Create `/lib/data/api/tokens/dtos/token_package_dto.dart` ✅
- [x] Create `/lib/data/api/tokens/dtos/token_transaction_dto.dart` ✅
- [x] Create `/lib/domain/models/tokens/token_balance.dart` (Freezed) ✅
- [x] Create `/lib/domain/models/tokens/token_package.dart` (Freezed) ✅
- [x] Create `/lib/domain/models/tokens/token_transaction.dart` (Freezed) ✅
- [x] Run `make build` to generate code ✅

### 🔌 Phase 2: API Service
- [x] Create `/lib/data/api/tokens/api_token_service.dart` ✅
  ```dart
  abstract class ApiTokenService {
    Future<TokenBalanceDto> getBalance(String token);
    Future<List<TokenPackageDto>> getPackages(String token);
    Future<TokenBalanceDto> purchaseTokens(String packageId, String token);
    Future<List<TokenTransactionDto>> getTransactions(String token, {int? limit, int? offset});
  }
  ```
- [x] Implement `ApiTokenServiceImpl` with HttpClientService ✅
- [x] Add error handling for 402 (Payment Required) ✅
- [x] Return balance = 0 if API fails or returns null ✅

### 💾 Phase 3: Local Storage
- [x] Create `/lib/data/local/sqlite/core/tables/token_balance_table.dart` ✅
- [x] Update database version to 26 in: ✅
  - `/lib/data/local/database/web_database_service.dart` ✅
  - `/lib/data/local/database/mobile_database_service.dart` (via SqliteService) ✅
- [x] Add migration logic in `_onUpdate` methods ✅
- [x] Create token storage service implementation ✅

### 🧠 Phase 4: State Management
- [x] Create `/lib/domain/blocs/tokens/token_state.dart` ✅
  ```dart
  @freezed
  class TokenState with _$TokenState {
    const factory TokenState.initial() = _Initial;
    const factory TokenState.loading() = _Loading;
    const factory TokenState.loaded({
      required TokenBalance balance,
      List<TokenPackage>? packages,
    }) = _Loaded;
    const factory TokenState.error(String message) = _Error;
  }
  ```
- [x] Create `/lib/domain/blocs/tokens/token_cubit.dart` ✅
- [x] Add TokenCubit to `/lib/dependencies/dependencies.dart` ✅
- [ ] Provide TokenCubit in CustomerAppPage

### 🎨 Phase 5: UI Components
- [x] Create `/lib/ui/shared/widgets/token_balance_indicator.dart` ✅
  - Show balance with icon
  - Loading state
  - Tap to refresh
- [x] Add balance indicator to tattoo generator pages: ✅
  - Update `/lib/ui/tattoo_generator/tattoo_generator_page.dart` ✅
  - Update `/lib/ui/tattoo_generator/tattoo_generator_page_web.dart` ✅
- [x] Add balance check before generation: ✅
  ```dart
  // Check balance (1 token per photo)
  final photosToGenerate = 4; // or dynamic based on request
  if (tokenBalance < photosToGenerate * TATTOO_GENERATION_COST) {
    showInsufficientTokensDialog();
    return;
  }
  ```

### 💳 Phase 6: Token Purchase Page
- [x] Create `/lib/ui/tokens/token_purchase_page.dart` ✅
- [x] Add "Coming Soon" placeholder: ✅
  ```dart
  Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.shopping_cart, size: 64),
        Text('Token Purchase'),
        Text('This feature is coming soon!'),
        Text('Stay tuned for token purchases'),
      ],
    ),
  )
  ```
- [x] Add route in `app_routes.dart` ✅
- [x] Add navigation from tattoo generator ✅

### 🔄 Phase 7: Integration
- [x] Load balance in CustomerAppPage `initState()` ✅
- [x] Refresh balance on app resume ✅ (via token balance indicator click)
- [x] Consume tokens after successful generation: ✅
  ```dart
  // In TattooGeneratorBloc after successful generation
  context.read<TokenCubit>().consumeTokens(GENERATION_COST);
  ```
- [x] Show balance in generator header ✅
- [x] Block generation if insufficient balance ✅

### 🎉 Bonus Features Implemented
- [x] Onboarding dialog explaining token system ✅
- [x] Clickable balance indicator that navigates to token purchase ✅
- [x] Floating Action Button for easy token purchase access ✅
- [x] Prominent "Get Tokens" button in web version ✅
- [x] Tooltip on balance indicator ✅

### 🧪 Phase 8: Testing
- [ ] Unit tests for TokenCubit
- [ ] Unit tests for ApiTokenService
- [ ] Widget tests for balance indicator
- [ ] Integration test for token consumption flow

### 🚀 Phase 9: Final Steps
- [ ] Add token balance to user menu/profile
- [ ] Add analytics events for token usage
- [ ] Create user documentation
- [ ] Test on both iOS/Android and Web

## 📝 Important Notes

### Constants to Define
```dart
// lib/constants/token_constants.dart
const int TATTOO_GENERATION_COST = 1; // Tokens per photo generation
const Duration TOKEN_CACHE_DURATION = Duration(minutes: 5);
const int DEFAULT_TOKEN_BALANCE = 0; // Default balance if API fails
```

### Error Messages (Localization)
```dart
// Add to intl_*.arb files
"insufficientTokens": "Insufficient tokens. You need {cost} token(s) to generate.",
"tokenPurchaseComingSoon": "Token purchase coming soon!",
"tokenBalance": "Balance: {balance} tokens",
"tokenBalanceError": "Unable to load token balance",
```

### Key Integration Points
1. **CustomerAppPage** - Load balance on init
2. **TattooGeneratorPage** - Check/consume tokens
3. **Profile/Settings** - Show balance
4. **AppBar** - Balance indicator (optional)

### API Response Handling
```dart
// Handle token-specific errors
if (response.statusCode == 402) {
  // Payment required - insufficient tokens
  throw InsufficientTokensException();
}
```

## 🔗 Quick Links
- [Full Implementation Plan](./TOKEN_SYSTEM_IMPLEMENTATION_PLAN.md)
- [API Documentation](./FRONTEND_TOKENS_GUIDE.md)
- [Database Schema](../lib/data/local/sqlite/core/tables/)
- [BLoC Pattern](../lib/domain/blocs/)

## 🎯 Priority Order
1. **Critical**: Models, API Service, TokenCubit
2. **High**: Balance display, Generation blocking
3. **Medium**: Purchase page, Transaction history
4. **Low**: Analytics, Advanced UI features