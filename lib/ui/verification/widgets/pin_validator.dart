import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/account_verification/account_verification_bloc.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:pinput/pinput.dart';

class PinValidator extends StatelessWidget {
  PinValidator({super.key});
  final controller = TextEditingController();
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<AccountVerificationBloc>(context);
    const length = 4;
    const borderColor = Color(0xff777E91);
    const errorColor = Color.fromARGB(255, 235, 0, 43);
    final fillColor = inputBackgroundColor;
    final defaultPinTheme = PinTheme(
      width: 62,
      height: 62,
      textStyle: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.transparent),
      ),
    );

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => SizedBox(
        height: 72,
        width: MediaQuery.of(context).size.width * 0.8,
        child: BlocBuilder<AccountVerificationBloc, AccountVerificationState>(
          buildWhen: (previous, current) => previous.pin != current.pin,
          builder: (context, state) {
            return Pinput(
              length: length,
              controller: controller,
              focusNode: focusNode,
              defaultPinTheme: defaultPinTheme,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              onCompleted: (pin) =>
                  bloc.add(VerificationPinCompletedEvent(pin)),
              onChanged: (number) =>
                  bloc.add(VerificationPinChangedEvent(number)),
              focusedPinTheme: defaultPinTheme.copyWith(
                height: 72,
                width: 72,
                decoration: defaultPinTheme.decoration!.copyWith(
                  border: Border.all(color: borderColor),
                ),
              ),
              // forceErrorState: !state.isValidPin &&
              //     state.accountVerificationStatus !=
              //         AccountVerificationStatus.ready,
              errorPinTheme: defaultPinTheme.copyWith(
                decoration: BoxDecoration(
                  color: fillColor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: errorColor),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
