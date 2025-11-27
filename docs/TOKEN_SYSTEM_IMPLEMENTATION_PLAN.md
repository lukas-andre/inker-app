# Token System Implementation Plan

## Overview
This document outlines the complete implementation plan for integrating the token system into the Inker Studio frontend. The token system limits the number of AI-generated tattoo designs users can create based on their token balance.

## Architecture Design

### 1. Core Components

#### 1.1 Models
- `TokenBalance` - Freezed model for token balance data
- `TokenPackage` - Freezed model for token packages
- `TokenTransaction` - Freezed model for transaction history

#### 1.2 DTOs
- `TokenBalanceDto` - API response model
- `TokenPackageDto` - API package model
- `TokenTransactionDto` - API transaction model

#### 1.3 Services
- `ApiTokenService` - API communication layer
- `TokenService` - Domain service layer
- `TokenStorageService` - Local storage management

#### 1.4 BLoC/Cubit
- `TokenCubit` - State management for token balance
- `TokenState` - Freezed state classes

### 2. File Structure

```
lib/
├── data/
│   ├── api/
│   │   └── tokens/
│   │       ├── api_token_service.dart
│   │       └── dtos/
│   │           ├── token_balance_dto.dart
│   │           ├── token_package_dto.dart
│   │           └── token_transaction_dto.dart
│   └── local/
│       └── sqlite/
│           └── core/
│               └── tables/
│                   └── token_balance_table.dart
├── domain/
│   ├── models/
│   │   └── tokens/
│   │       ├── token_balance.dart
│   │       ├── token_package.dart
│   │       └── token_transaction.dart
│   ├── services/
│   │   └── tokens/
│   │       ├── token_service.dart
│   │       └── token_storage_service.dart
│   └── blocs/
│       └── tokens/
│           ├── token_cubit.dart
│           └── token_state.dart
└── ui/
    ├── tokens/
    │   ├── token_purchase_page.dart
    │   ├── widgets/
    │   │   ├── token_balance_widget.dart
    │   │   └── token_packages_list.dart
    └── shared/
        └── widgets/
            └── token_balance_indicator.dart
```

## Implementation Tasks

### Phase 1: Core Infrastructure (Week 1)

#### Task 1.1: Create Models and DTOs ✅
- [x] Create `TokenBalanceDto` with JSON serialization
- [x] Create `TokenPackageDto` with JSON serialization
- [x] Create `TokenTransactionDto` with JSON serialization
- [x] Create domain models with Freezed
- [x] Run code generation

#### Task 1.2: Create API Service ✅
- [x] Create `ApiTokenService` interface
- [x] Implement API endpoints:
  - GET `/tokens/balance`
  - GET `/tokens/packages`
  - POST `/tokens/purchase`
  - GET `/tokens/transactions`
- [x] Add error handling

#### Task 1.3: Create Domain Service ✅
- [x] Create `TokenService` interface
- [x] Implement business logic
- [x] Add token consumption tracking
- [x] Add balance validation

#### Task 1.4: Database Integration ✅
- [x] Create `token_balance_table.dart`
- [x] Update database version in both services
- [x] Add migration logic
- [x] Create storage service implementation

### Phase 2: State Management (Week 1-2)

#### Task 2.1: Create Token Cubit ✓
- [ ] Create `TokenCubit` with states:
  - Initial
  - Loading
  - Loaded (balance, packages)
  - Error
- [ ] Implement methods:
  - `loadBalance()`
  - `refreshBalance()`
  - `consumeTokens(amount)`
  - `purchaseTokens(packageId)`
- [ ] Add event bus integration

#### Task 2.2: Integrate with App Initialization ✓
- [ ] Add TokenCubit to dependencies.dart
- [ ] Initialize on app startup
- [ ] Add to CustomerAppPage providers
- [ ] Load balance on login

### Phase 3: UI Components (Week 2)

#### Task 3.1: Create Balance Display Widget ✓
- [ ] Create `TokenBalanceWidget`
- [ ] Show current balance
- [ ] Show loading/error states
- [ ] Add refresh functionality

#### Task 3.2: Update Tattoo Generator Pages ✓
- [ ] Add balance check before generation
- [ ] Show balance in header
- [ ] Display token cost per generation
- [ ] Block generation if insufficient balance
- [ ] Update both mobile and web versions

#### Task 3.3: Create Purchase Page (Dummy) ✓
- [ ] Create `TokenPurchasePage`
- [ ] Add "Coming Soon" message
- [ ] Display available packages
- [ ] Add navigation from generator

### Phase 4: Integration (Week 2-3)

#### Task 4.1: Customer App Integration ✓
- [ ] Load balance on app entry
- [ ] Add balance indicator to app bar
- [ ] Refresh balance on focus
- [ ] Handle expired tokens

#### Task 4.2: Tattoo Generator Integration ✓
- [ ] Check balance before generation
- [ ] Deduct tokens on successful generation
- [ ] Show error if insufficient balance
- [ ] Add "Buy Tokens" button

#### Task 4.3: Web Platform Support ✓
- [ ] Ensure web database compatibility
- [ ] Test balance persistence
- [ ] Handle web-specific edge cases

### Phase 5: Testing & Polish (Week 3)

#### Task 5.1: Unit Tests ✓
- [ ] Test API service
- [ ] Test domain service
- [ ] Test Cubit logic
- [ ] Test storage service

#### Task 5.2: Integration Tests ✓
- [ ] Test balance loading flow
- [ ] Test token consumption
- [ ] Test error scenarios
- [ ] Test offline behavior

#### Task 5.3: UI/UX Polish ✓
- [ ] Add animations
- [ ] Improve error messages
- [ ] Add success feedback
- [ ] Optimize performance

## Technical Details

### API Endpoints

```dart
// Get current balance
GET /tokens/balance
Response: TokenBalanceDto

// Get available packages
GET /tokens/packages
Response: List<TokenPackageDto>

// Purchase tokens
POST /tokens/purchase
Body: { packageId: string, paymentData: {...} }
Response: TokenBalanceDto

// Get transaction history
GET /tokens/transactions?limit=20&offset=0
Response: List<TokenTransactionDto>
```

### Local Storage Schema

```sql
CREATE TABLE TokenBalance(
  id TEXT PRIMARY KEY,
  userId TEXT NOT NULL,
  balance INTEGER NOT NULL,
  totalPurchased INTEGER NOT NULL,
  totalConsumed INTEGER NOT NULL,
  totalGranted INTEGER NOT NULL,
  lastPurchaseAt INTEGER,
  lastSyncAt INTEGER NOT NULL,
  createdAt INTEGER NOT NULL,
  updatedAt INTEGER NOT NULL
);
```

### State Management Flow

```
App Start → Load Session → Fetch Balance → Store Locally
                ↓
        Initialize TokenCubit
                ↓
    CustomerAppPage listens to state
                ↓
    TattooGenerator checks balance
                ↓
    Generate → Consume Tokens → Update UI
```

## Implementation Guidelines

### 1. Follow Existing Patterns
- Use Clean Architecture layers
- Implement with BLoC/Cubit pattern
- Use Freezed for immutable models
- Follow existing service patterns

### 2. Error Handling
- Handle network failures gracefully
- Cache balance for offline access
- Show clear error messages
- Provide retry mechanisms

### 3. Performance
- Cache balance in memory
- Batch API calls when possible
- Update UI optimistically
- Minimize database queries

### 4. Security
- Never expose sensitive data
- Validate token amounts
- Handle expired sessions
- Secure payment data

## Testing Strategy

### Unit Tests
```dart
// Example: Token Service Test
test('should deduct tokens on consumption', () async {
  final service = TokenService(...);
  final initialBalance = await service.getBalance();
  
  await service.consumeTokens(1); // 1 token per photo
  
  final newBalance = await service.getBalance();
  expect(newBalance, initialBalance - 1);
});
```

### Integration Tests
```dart
// Example: Token Flow Test
testWidgets('should show insufficient balance error', (tester) async {
  // Set low balance
  when(mockTokenService.getBalance()).thenAnswer((_) async => 0);
  
  // Try to generate (costs 1 token per photo, 4 photos = 4 tokens)
  await tester.tap(find.byKey(K.generateButton));
  await tester.pumpAndSettle();
  
  // Verify error shown
  expect(find.text('Insufficient tokens'), findsOneWidget);
});
```

## Migration Plan

1. **Database Migration**
   - Increment version to 26
   - Add token balance table
   - Handle existing users

2. **Feature Flag**
   - Add feature flag for gradual rollout
   - Test with small user group first
   - Monitor for issues

3. **Rollback Plan**
   - Keep old flow accessible
   - Database downgrades ready
   - Quick disable mechanism

## Future Enhancements

1. **Token Packages**
   - Subscription plans
   - Bulk discounts
   - Promotional offers

2. **Token Usage Analytics**
   - Track usage patterns
   - Optimize pricing
   - User behavior insights

3. **Advanced Features**
   - Token gifting
   - Referral bonuses
   - Loyalty rewards

## Success Metrics

- Token purchase conversion rate
- Average tokens per user
- Generation attempts vs completions
- User retention impact
- Revenue per user

## Timeline

- **Week 1**: Core infrastructure and models
- **Week 2**: UI components and integration
- **Week 3**: Testing and polish
- **Week 4**: Deployment and monitoring

## Resources

- [Frontend Tokens Guide](../FRONTEND_TOKENS_GUIDE.md)
- [API Documentation](https://api.inker.com/docs)
- [Flutter BLoC Documentation](https://bloclibrary.dev)
- [Freezed Documentation](https://pub.dev/packages/freezed)