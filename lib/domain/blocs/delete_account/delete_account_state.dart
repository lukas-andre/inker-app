part of 'delete_account_bloc.dart';

@freezed
class DeleteAccountState with _$DeleteAccountState {
  const factory DeleteAccountState.initial() = _DeleteAccountInitial;
  const factory DeleteAccountState.inProgress() = _DeleteAccountInProgress;
  const factory DeleteAccountState.success() = _DeleteAccountSuccess;
  const factory DeleteAccountState.failure({required String error}) =
      _DeleteAccountFailure;
}
