import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/cubits/login/hide_password_cubit.dart';
import 'package:inker_studio/ui/login2/form/inputs/styles.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HidePasswordCubit(),
      child: BlocBuilder<HidePasswordCubit, HidePasswordState>(
        builder: (context, state) {
          return Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 16),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                cursorColor: const Color(0xff777E91),
                obscureText: state is HidePasswordInitial ? true : false,
                decoration: InputDecoration(
                  contentPadding: inputContentPadding,
                  label: Text(
                    'Contraseña',
                    textAlign: TextAlign.left,
                    style: labelTextStyle,
                  ),
                  filled: true,
                  fillColor: inputBackgroundColor,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Color(0xff777E91),
                      )),
                  suffixIcon: GestureDetector(
                    onTap: (() {
                      context.read<HidePasswordCubit>().toggle();
                    }),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 23),
                      child: Icon(
                        state is HidePasswordInitial
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: const Color(0xff777E91),
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                        color: Color(0xff777E91), style: BorderStyle.none),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
