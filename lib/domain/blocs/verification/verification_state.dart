part of 'verification_bloc.dart';

enum AccountVerificationStatus {
  initial,
  sentSMS,
  sentEmail,
  validated,
  failed,
}

enum AccountVerificationType {
  sms,
  email;

  String? get name {
    switch (this) {
      case AccountVerificationType.sms:
        return 'número';
      case AccountVerificationType.email:
        return 'correo';
    }
  }
}

class VerificationState extends Equatable {
  const VerificationState({
    this.phoneNumber,
    this.email,
    this.lastTimeSent,
    this.accountVerificationStatus = AccountVerificationStatus.initial,
    this.accountVerificationType = AccountVerificationType.sms,
  });

  final String? phoneNumber;
  final String? email;

  final DateTime? lastTimeSent;
  final AccountVerificationStatus? accountVerificationStatus;
  final AccountVerificationType? accountVerificationType;

  VerificationState copyWith({
    String? phoneNumber,
    String? email,
    DateTime? lastTimeSent,
    AccountVerificationStatus? accountVerificationStatus,
    AccountVerificationType? accountVerificationType,
  }) {
    return VerificationState(
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      lastTimeSent: lastTimeSent ?? this.lastTimeSent,
      accountVerificationStatus:
          accountVerificationStatus ?? this.accountVerificationStatus,
      accountVerificationType:
          accountVerificationType ?? this.accountVerificationType,
    );
  }

  @override
  List<Object?> get props => [
        phoneNumber,
        email,
        lastTimeSent,
        accountVerificationStatus,
        accountVerificationType,
      ];

  @override
  bool get stringify => true;
}
