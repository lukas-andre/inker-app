import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/tokens/token_balance.dart';
import 'package:inker_studio/domain/models/tokens/token_package.dart';

part 'token_state.freezed.dart';

@freezed
class TokenState with _$TokenState {
  const factory TokenState.initial() = _Initial;
  
  const factory TokenState.loading() = _Loading;
  
  const factory TokenState.loaded({
    required TokenBalance balance,
    @Default([]) List<TokenPackage> packages,
    @Default(false) bool isRefreshing,
  }) = _Loaded;
  
  const factory TokenState.error({
    required String message,
    TokenBalance? lastKnownBalance,
  }) = _Error;
  
  const factory TokenState.insufficientBalance({
    required TokenBalance balance,
    required int requiredAmount,
    @Default([]) List<TokenPackage> packages,
  }) = _InsufficientBalance;
}