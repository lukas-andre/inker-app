import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/domain/blocs/register/customer/register_customer_bloc.dart';
import 'package:inker_studio/domain/models/user/user_type.dart';
import 'package:inker_studio/ui/login/login_page.dart';
import 'package:inker_studio/ui/on_boarding/on_boarding_page.dart';
import 'package:inker_studio/utils/bloc_navigator.dart';

class CloseRegisterButton extends StatelessWidget {
  const CloseRegisterButton({super.key, this.index, this.toPage, this.userType});
  final int? index;
  final dynamic toPage;
  final String? userType;

  @override
  Widget build(BuildContext context) {
    RegisterArtistBloc registerArtistBloc =
        BlocProvider.of<RegisterArtistBloc>(context);
    RegisterCustomerBloc registerCustomerBloc =
        BlocProvider.of<RegisterCustomerBloc>(context);

    return Container(
      key: key,
      padding: EdgeInsets.only(right: 22, top: Platform.isIOS ? 22 : 40),
      child: Center(
          child: IconButton(
              onPressed: () async {
                if (toPage != null) {
                  if (toPage is LoginPage) {
                    InkerNavigator.pushAndRemoveUntil(
                        context, const OnBoardingPage());
                    InkerNavigator.push(context, toPage);
                  } else {
                    InkerNavigator.pushAndRemoveUntil(context, toPage);
                  }

                  _clearForm(
                      userType, registerArtistBloc, registerCustomerBloc);

                  return;
                }

                if (index != null) {
                  if (index == 0) {
                    InkerNavigator.pop(context);
                    _clearForm(
                        userType, registerArtistBloc, registerCustomerBloc);

                    return;
                  }

                  final shouldClose =
                      await _onCloseRegisterButtonPressed(context);

                  if (shouldClose) {
                    for (int i = 0; i < index! + 1; i++) {
                      InkerNavigator.pop(context);
                      await Future.delayed(const Duration(milliseconds: 100));
                    }
                    _clearForm(
                        userType, registerArtistBloc, registerCustomerBloc);
                  }
                } else {
                  InkerNavigator.pop(context);
                }
              },
              icon: SvgPicture.asset(
                'assets/icons/svg/circle-xmark-solid.svg',
                color: Colors.white,
                height: 45,
              ))),
    );
  }

  Future<bool> _onCloseRegisterButtonPressed(BuildContext context) async {
    bool shouldClose = true;
    Platform.isIOS
        ? await showCupertinoDialog(
            context: context,
            builder: (context) => CupertinoAlertDialog(
                  title: const Text('Quieres cerrar el formulario?'),
                  content: const Text(
                      'Si cierras el formulario, sera limpiado todo lo que hayas escrito.'),
                  actions: <Widget>[
                    CupertinoDialogAction(
                      isDestructiveAction: true,
                      onPressed: () {
                        shouldClose = true;
                        Navigator.of(context).pop();
                      },
                      child: const Text('Sí'),
                    ),
                    CupertinoDialogAction(
                      isDefaultAction: true,
                      child: const Text('No'),
                      onPressed: () {
                        shouldClose = false;
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ))
        : await showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Quieres cerrar el formulario?'),
                content: const Text(
                    'Si cierras el formulario, sera limpiado todo lo que hayas escrito.'),
                actions: <Widget>[
                  TextButton(
                    child: const Text('No'),
                    onPressed: () {
                      shouldClose = false;
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: const Text('OK'),
                    onPressed: () {
                      shouldClose = true;
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            });

    return shouldClose;
  }

  void _clearForm(String? userType, RegisterArtistBloc registerArtistBloc,
      RegisterCustomerBloc registerCustomerBloc) {
    userType == UserType.artist
        ? registerArtistBloc.add(const RegisterArtistClearForm())
        : registerCustomerBloc.add(const RegisterCustomerClearForm());
  }
}
