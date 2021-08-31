import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:inker_studio/domain/blocs/account_verification/account_verification_bloc.dart';
import 'package:inker_studio/ui/login/login.dart';
import 'package:inker_studio/utils/dev.dart';

class SMSCodeVerificationPage extends StatelessWidget {
  final String className = 'SMSCodeVerificationPage';

  static Route route() {
    return MaterialPageRoute<void>(
        builder: (context) => const SMSCodeVerificationPage());
  }

  const SMSCodeVerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('SMS Code Verification')),
        resizeToAvoidBottomInset: false,
        body: BlocListener<AccountVerificationBloc, AccountVerificationState>(
          listener: (context, state) {
            // TODO: implement listener
            if (state.accountVerificationStatus ==
                AccountVerificationStatus.smsVerifciationFailure) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(content: Text(state.errorMessage!)),
                );
            } else if (state.accountVerificationStatus ==
                AccountVerificationStatus.smsVerifciationOk) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  const SnackBar(content: Text('User verified!')),
                );

              Navigator.of(context)
                  .pushAndRemoveUntil(LoginPage.route(), (route) => false);
            }
          },
          child: BlocBuilder<AccountVerificationBloc, AccountVerificationState>(
              builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Enter the verification code'),
                  VerificationCode(
                    textStyle: TextStyle(
                        fontSize: 20.0, color: Theme.of(context).primaryColor),
                    underlineColor: Theme.of(context).primaryColor,
                    keyboardType: TextInputType.number,
                    length: 4,
                    // clearAll is NOT required, you can delete it
                    // takes any widget, so you can implement your design
                    clearAll: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'clear all',
                        style: TextStyle(
                            fontSize: 14.0,
                            decoration: TextDecoration.underline,
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                    onCompleted: (String value) {
                      dev.log('completed ', className);
                      context.read<AccountVerificationBloc>().add(
                          AccountVerificationValidateVerificationCode(value));
                    },
                    onEditing: (bool value) {
                      dev.log('onEditing ', className);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Visibility(
                      child: const CircularProgressIndicator(),
                      visible: (state.accountVerificationStatus ==
                              AccountVerificationStatus
                                  .smsVerificationInProcess)
                          ? true
                          : false),
                  const SizedBox(
                    height: 300,
                  )
                ],
              ),
            );
          }),
        ));
  }
}
