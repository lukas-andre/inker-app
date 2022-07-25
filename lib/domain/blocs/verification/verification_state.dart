part of 'verification_bloc.dart';

enum AccountVerificationStatus {
  initial,
  ready,
  userAlreadyVerified,
  sentSMS,
  sentSMSFailed,
  sendedSMS,
  sentEmail,
  sentEmailFailed,
  sendedEmail,
  invalidCode,
  activated,
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
  const VerificationState(
      {this.lastTimeSent,
      this.pin,
      this.accountVerificationStatus = AccountVerificationStatus.initial,
      this.accountVerificationType = AccountVerificationType.sms,
      this.tries = 0,
      this.maxTries = 4,
      this.isVerifying = false,
      this.verificationStatusMessage});

  final String? pin;
  final bool isVerifying;
  final int tries;
  final int maxTries;

  final DateTime? lastTimeSent;
  final AccountVerificationStatus? accountVerificationStatus;
  final String? verificationStatusMessage;
  final AccountVerificationType? accountVerificationType;

  bool get isPinCompleted => pin?.length == 4;
  bool get maxTriesReached => tries >= maxTries;

  VerificationState copyWith({
    String? pin,
    DateTime? lastTimeSent,
    AccountVerificationStatus? accountVerificationStatus,
    String? verificationStatusMessage,
    AccountVerificationType? accountVerificationType,
    int? tries,
    int? maxTries,
    bool? isVerifying,
  }) {
    return VerificationState(
      pin: pin ?? this.pin,
      lastTimeSent: lastTimeSent ?? this.lastTimeSent,
      accountVerificationStatus:
          accountVerificationStatus ?? this.accountVerificationStatus,
      verificationStatusMessage:
          verificationStatusMessage ?? this.verificationStatusMessage,
      accountVerificationType:
          accountVerificationType ?? this.accountVerificationType,
      tries: tries ?? this.tries,
      maxTries: maxTries ?? this.maxTries,
      isVerifying: isVerifying ?? this.isVerifying,
    );
  }

  @override
  List<Object?> get props => [
        pin,
        lastTimeSent,
        accountVerificationStatus,
        verificationStatusMessage,
        accountVerificationType,
        tries,
        maxTries,
        isVerifying,
      ];

  @override
  bool get stringify => true;
}
