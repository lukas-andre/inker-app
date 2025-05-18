import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/domain/blocs/register/customer/register_customer_bloc.dart';
import 'package:inker_studio/domain/blocs/register/register_bloc.dart';
import 'package:inker_studio/ui/login/widgets/login_background.dart';
import 'package:inker_studio/ui/register/widgets/register_user_by_type_layout.dart';

class RegisterUserByTypePage extends StatelessWidget {
  const RegisterUserByTypePage({super.key});

  static Route route() {
    return MaterialPageRoute<void>(
        builder: (_) => const RegisterUserByTypePage());
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final registerBloc = BlocProvider.of<RegisterBloc>(context);
        if (registerBloc.state.registerType == RegisterType.artist) {
          final shouldClose = await _shouldCloseArtist(context);
          return shouldClose;
        } else {
          final shouldClose = await _shouldCloseCustomer(context);
          return shouldClose;
        }
      },
      child: const Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
          children: [
            LoginBackground(),
            RegisterUserByTypeLayout(),
          ],
        ),
      ),
    );
  }

  Future<bool> _shouldCloseCustomer(BuildContext context) async {
    final registerCustomerBloc = BlocProvider.of<RegisterCustomerBloc>(context);
    if (registerCustomerBloc.state.pageIndex == 0) {
      return true;
    }

    bool shouldClose = true;
    await showCupertinoDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
              title: const Text('¿Quieres cerrar el formulario?'),
              content: const Text(
                  'Si cierras el formulario, sera limpiado todo lo que hayas escrito.'),
              actions: <Widget>[
                CupertinoDialogAction(
                  isDestructiveAction: true,
                  isDefaultAction: true,
                  onPressed: () {
                    shouldClose = true;
                    Navigator.of(context).pop();
                  },
                  child: const Text('Sí'),
                ),
                CupertinoDialogAction(
                  child: const Text('No'),
                  onPressed: () {
                    shouldClose = false;
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ));

    if (shouldClose) {
      registerCustomerBloc.add(const RegisterCustomerClearForm());
    }
    return shouldClose;
  }

  Future<bool> _shouldCloseArtist(BuildContext context) async {
    final registerArtistBloc = BlocProvider.of<RegisterArtistBloc>(context);
    if (registerArtistBloc.state.pageIndex == 0) {
      return true;
    }

    bool shouldClose = true;
    await showCupertinoDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
              title: const Text('¿Quieres cerrar el formulario?'),
              content: const Text(
                  'Si cierras el formulario, sera limpiado todo lo que hayas escrito.'),
              actions: <Widget>[
                CupertinoDialogAction(
                  isDestructiveAction: true,
                  isDefaultAction: true,
                  onPressed: () {
                    shouldClose = true;
                    Navigator.of(context).pop();
                  },
                  child: const Text('Sí'),
                ),
                CupertinoDialogAction(
                  child: const Text('No'),
                  onPressed: () {
                    shouldClose = false;
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ));
    if (shouldClose) {
      registerArtistBloc.add(const RegisterArtistClearForm());
    }
    return shouldClose;
  }
}
