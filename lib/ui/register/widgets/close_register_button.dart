import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/ui/login/login_page.dart';
import 'package:inker_studio/ui/on_boarding/on_boarding_page.dart';
import 'package:inker_studio/utils/bloc_navigator.dart';

class CloseRegisterButton extends StatelessWidget {
  const CloseRegisterButton({Key? key, this.index, this.toPage})
      : super(key: key);
  final int? index;
  final dynamic toPage;

  @override
  Widget build(BuildContext context) {
    RegisterArtistBloc _bloc = BlocProvider.of<RegisterArtistBloc>(context);

    return Container(
      padding: const EdgeInsets.only(right: 22, top: 22),
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
                  // InkerNavigator.pushAndRemoveUntil2(context, page, predicate)
                  _bloc.add(const RegisterArtistClearForm());
                  return;
                }

                if (index != null) {
                  if (index == 0) {
                    InkerNavigator.pop(context);
                    _bloc.add(const RegisterArtistClearForm());

                    return;
                  }

                  bool shouldClose = true;
                  await showCupertinoDialog(
                      context: context,
                      builder: (context) => CupertinoAlertDialog(
                            title: const Text('Quieres cerrar el formulario?'),
                            content: const Text(
                                'Si cierras el formulario, sera limpiado todo lo que hayas escrito.'),
                            actions: <Widget>[
                              CupertinoDialogAction(
                                child: const Text('Sí'),
                                isDestructiveAction: true,
                                onPressed: () {
                                  shouldClose = true;
                                  Navigator.of(context).pop();
                                },
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
                          ));

                  if (shouldClose) {
                    for (int i = 0; i < index! + 1; i++) {
                      InkerNavigator.pop(context);
                      await Future.delayed(const Duration(milliseconds: 100));
                    }
                    _bloc.add(const RegisterArtistClearForm());
                  }
                } else {
                  InkerNavigator.pop(context);
                }
              },
              icon: SvgPicture.asset(
                'assets/icons/svg/circle-xmark-solid.svg',
                color: Colors.white,
                // height: 50,
              ))),
    );
  }
}
