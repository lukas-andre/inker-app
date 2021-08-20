import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:inker_studio/domain/blocs/account_verification/account_verification_bloc.dart';
import 'package:inker_studio/utils/dev.dart';

class SMSCodeVerificationPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(
        builder: (context) => const SMSCodeVerificationPage());
  }

  const SMSCodeVerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AccountVerificationBloc _accountVerificationBloc =
        BlocProvider.of<AccountVerificationBloc>(context);
    return Scaffold(
        appBar: AppBar(title: const Text('SMS Code Verification')),
        body: BlocBuilder<AccountVerificationBloc, AccountVerificationState>(
            bloc: _accountVerificationBloc,
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  VerificationCode(
                    textStyle:
                        TextStyle(fontSize: 20.0, color: Colors.red[900]),
                    underlineColor: Colors.amber,
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
                            color: Colors.blue[700]),
                      ),
                    ),
                    onCompleted: (String value) {
                      dev.log('completed', '');
                    },
                    onEditing: (bool value) {
                      dev.log('onEditing', '');
                    },
                  ),
                ],
              );
            }));
  }
}
