import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/account_verification/account_verification_bloc.dart';
import 'package:inker_studio/features/login/ui/login/login_page.dart' show LoginPage;
import 'package:inker_studio/features/onboarding/ui/onboarding/onboarding_page.dart' show OnBoardingPage;
import 'package:inker_studio/features/register/ui/register/widgets/register_action_button.dart' show RegisterActionButton;
import 'package:inker_studio/features/verification/ui/mobile/verification_mobile_view.dart';
import 'package:inker_studio/features/verification/ui/web/verification_web_view.dart';
import 'package:inker_studio/utils/bloc_navigator.dart';
import 'package:inker_studio/utils/responsive/responsive_builder.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';
import 'package:inker_studio/utils/snackbar/invalid_form_snackbar.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const VerificationPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () {
          final currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: const Stack(
          children: [
            ResponsiveBuilder(
              mobile: VerificationMobileView(),
              tablet: VerificationWebView(),
              desktop: VerificationWebView(),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: VerificationPageNextButton(),
            ),
          ],
        ),
      ),
    );
  }
}

class VerificationPageNextButton extends StatelessWidget {
  const VerificationPageNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountVerificationBloc, AccountVerificationState>(
      listenWhen: (previous, current) =>
          previous.accountVerificationStatus?.index !=
          current.accountVerificationStatus?.index,
      listener: (context, state) {
        switch (state.accountVerificationStatus) {
          case AccountVerificationStatus.initial:
          case AccountVerificationStatus.ready:
          case AccountVerificationStatus.sentSMS:
          case AccountVerificationStatus.sentEmail:
          case AccountVerificationStatus.sendedSMS:
          case AccountVerificationStatus.sendedEmail:
            // TODO: Handle this case.
            break;
          case AccountVerificationStatus.userAlreadyVerified:
            _handleUserAlreadyVerified(context, state);
            break;
          case AccountVerificationStatus.activated:
            handleActivatedUser(state, context);
            break;
          case AccountVerificationStatus.sentSMSFailed:
          case AccountVerificationStatus.sentEmailFailed:
            _handleNotificationFailed(context, state.verificationStatusMessage);
            break;
          case AccountVerificationStatus.invalidCode:
            _handleInvalidCode(context, state.verificationStatusMessage);
            break;
          case AccountVerificationStatus.failed:
            _handleVerificationFailed(context, state.verificationStatusMessage);
            break;
          default:
            break;
        }
        context
            .read<AccountVerificationBloc>()
            .add(const VerificationClearEvent());
      },
      child: BlocBuilder<AccountVerificationBloc, AccountVerificationState>(
        buildWhen: (previous, current) =>
            previous.accountVerificationType !=
                current.accountVerificationType ||
            previous.pin != current.pin ||
            previous.isVerifying != current.isVerifying ||
            previous.accountVerificationStatus?.index !=
                current.accountVerificationStatus?.index,
        builder: (context, state) {
          return RegisterActionButton(
            text: 'Verificar ${state.accountVerificationType?.name}',
            onPressed: () {
              if (state.isPinCompleted) {
                context
                    .read<AccountVerificationBloc>()
                    .add(VerificationPinCompletedEvent(state.pin ?? ''));
              } else {
                final snackBar = getInvalidFormSnackBar(context);
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            isLoading: state.isVerifying,
          );
        },
      ),
    );
  }

  void _handleVerificationFailed(BuildContext context, String? message) {
    final snackBar = customSnackBar(
        content: message ?? 'We were unable to verify your account');
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _handleInvalidCode(BuildContext context, String? message) {
    final snackBar =
        customSnackBar(content: message ?? 'Invalid verification code');
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _handleNotificationFailed(BuildContext context, String? message) {
    final snackBar = customSnackBar(
        content: message ?? 'Error sending verification code :( ');
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void handleActivatedUser(
      AccountVerificationState state, BuildContext context) {
    if (state.isVerifying) {
      context
          .read<AccountVerificationBloc>()
          .add(const VerificationResetEvent());
    }
    final snackBar = customSnackBar(
        content: state.verificationStatusMessage ?? 'User already verified');

    InkerNavigator.pushAndRemoveUntil(
      context,
      const OnBoardingPage(),
    );

    InkerNavigator.push(context, const LoginPage());
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _handleUserAlreadyVerified(
      BuildContext context, AccountVerificationState state) {
    InkerNavigator.pushAndRemoveUntil(
      context,
      const OnBoardingPage(),
    );

    InkerNavigator.push(context, const LoginPage());

    final snackBar = customSnackBar(
        content: state.verificationStatusMessage ?? 'User already verified');
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}