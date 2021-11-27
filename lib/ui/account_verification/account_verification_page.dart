import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/account_verification/account_verification_bloc.dart';
import 'package:inker_studio/ui/account_verification/account_verification_body.dart';

class AccountVerificationPage extends StatelessWidget {
  static Page page() {
    return const MaterialPage<void>(child: AccountVerificationPage());
  }

  const AccountVerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Account Verification')),
      resizeToAvoidBottomInset: false,
      body: BlocProvider(
        create: (context) => AccountVerificationBloc(
            localCustomerService: context.read(),
            accountVerificationService: context.read())
          ..add(const AccountVerificationCreationSuccedEvent()),
        child: const AccountVerificationBody(),
      ),
    );
  }
}
