import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:inker_studio/domain/blocs/login/login_bloc.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';

class ActionsButtons extends StatelessWidget {
  const ActionsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: ForgotMyPassword()),
        Expanded(child: SignInButton())
      ],
    );
  }
}

class ForgotMyPassword extends StatelessWidget {
  const ForgotMyPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: const Text(
        'Olvide mi contraseña',
        style:
            TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 14),
      ),
    );
  }
}

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ButtonStyle initSessionButtonStyle = ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
        backgroundColor:
            WidgetStateProperty.all<Color>(const Color(0xff7450FF)));
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status == FormzStatus.submissionInProgress
            ? const Center(
                child: SizedBox(
                    height: 55,
                    child: Center(
                      child: InkerProgressIndicator(),
                    )))
            : SizedBox(
                key: const Key('loginForm_signin_button'),
                height: 55,
                child: TextButton(
                  style: initSessionButtonStyle,
                  onPressed: () {
                    dev.log('pressed', 'singinButton');
                    final currentFocus = FocusScope.of(context);

                    if (!currentFocus.hasPrimaryFocus &&
                        currentFocus.hasFocus) {
                      currentFocus.unfocus();
                    }

                    context.read<LoginBloc>().add(const LoginSubmitted());
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Iniciar sesión'),
                      SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward,
                        size: 20,
                      )
                    ],
                  ),
                ),
              );
      },
    );
  }
}

// class _LoginButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<LoginBloc, LoginState>(
//       buildWhen: (previous, current) => previous.status != current.status,
//       builder: (context, state) {
//         return state.status.isSubmissionInProgress
//             ? const CircularProgressIndicator()
//             : ElevatedButton(
//                 key: const Key('loginForm_continue_raisedButton'),
//                 child: const Text('Login'),
//                 onPressed: state.status.isValidated
//                     ? () {
//                         context.read<LoginBloc>().add(const LoginSubmitted());
//                       }
//                     : null,
//               );
//       },
//     );
//   }
// }
