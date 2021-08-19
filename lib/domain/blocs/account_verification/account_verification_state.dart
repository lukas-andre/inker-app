part of 'account_verification_bloc.dart';

enum AccountVerificationStatus { initial, created, sucess, failure }

class AccountVerificationState extends Equatable {
  const AccountVerificationState(
      {this.accountVerificationStatus = AccountVerificationStatus.initial,
      this.firstName = '',
      this.email = '',
      this.userId,
      this.phoneNumber = '',
      this.verificationCode = '',
      this.errorMessage = ''});

  final AccountVerificationStatus accountVerificationStatus;
  final String firstName;
  final String? email;
  final int? userId;
  final String? phoneNumber;
  final String? verificationCode;
  final String? errorMessage;

  @override
  List<Object?> get props {
    return [
      accountVerificationStatus,
      firstName,
      email,
      userId,
      phoneNumber,
      verificationCode,
    ];
  }

  AccountVerificationState copyWith({
    AccountVerificationStatus? accountVerificationStatus,
    String? firstName,
    int? userId,
    String? email,
    String? phoneNumber,
    String? verificationCode,
  }) {
    return AccountVerificationState(
      accountVerificationStatus:
          accountVerificationStatus ?? this.accountVerificationStatus,
      firstName: firstName ?? this.firstName,
      email: email ?? this.email,
      userId: userId ?? this.userId,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      verificationCode: verificationCode ?? this.verificationCode,
    );
  }

  @override
  bool get stringify => true;
}
