import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/account_verification/account_verification_bloc.dart';
import 'package:inker_studio/utils/dev.dart';

class AccountVerificationBody extends StatelessWidget {
  static const String className = 'AccountVerificationBody';

  const AccountVerificationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountVerificationBloc, AccountVerificationState>(
      listener: (context, state) {
        dev.log('Form status: ${state.accountVerificationStatus}', className);
        if (state.accountVerificationStatus ==
            AccountVerificationStatus.failure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(state.errorMessage!)),
            );
        }
      },
      child: Align(
        alignment: const Alignment(0, -1 / 3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.all(12)),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: const [
                  Expanded(child: SendSMSButton()),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.all(12)),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: const [
                  Expanded(
                    child: SendEmailButton(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SendSMSButton extends StatelessWidget {
  const SendSMSButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountVerificationBloc, AccountVerificationState>(
      buildWhen: (previous, current) =>
          previous.accountVerificationStatus !=
          current.accountVerificationStatus,
      builder: (context, state) {
        return state.accountVerificationStatus !=
                AccountVerificationStatus.created
            ? const CircularProgressIndicator()
            : ElevatedButton(
                key: const Key('sendSmsButton_continue_raisedButton'),
                child: Text('Send SMS to ${state.phoneNumber}'),
                onPressed: () {
                  context
                      .read<AccountVerificationBloc>()
                      .add(const AccountVerificationSendSMS());
                });
      },
    );
  }
}

class SendEmailButton extends StatelessWidget {
  const SendEmailButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountVerificationBloc, AccountVerificationState>(
      buildWhen: (previous, current) =>
          previous.accountVerificationStatus !=
          current.accountVerificationStatus,
      builder: (context, state) {
        return state.accountVerificationStatus !=
                AccountVerificationStatus.created
            ? const CircularProgressIndicator()
            : ElevatedButton(
                key: const Key('sendEmailButton_continue_raisedButton'),
                child: Text('Send email to ${state.email}'),
                onPressed: () {});
      },
    );
  }
}
