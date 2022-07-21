import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/domain/blocs/register/register_bloc.dart';
import 'package:inker_studio/ui/login2/widgets/login_background.dart';
import 'package:inker_studio/ui/register/widgets/register_user_by_type_layout.dart';

class RegisterUserByTypePage extends StatelessWidget {
  const RegisterUserByTypePage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(
        builder: (_) => const RegisterUserByTypePage());
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final registerArtistBloc = BlocProvider.of<RegisterArtistBloc>(context);
        final registerBloc = BlocProvider.of<RegisterBloc>(context);
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
                      child: const Text('Sí'),
                      isDestructiveAction: true,
                      isDefaultAction: true,
                      onPressed: () {
                        shouldClose = true;
                        Navigator.of(context).pop();
                      },
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

        if (shouldClose &&
            registerBloc.state.registerType != RegisterType.unknown) {
          registerArtistBloc.add(const RegisterArtistClearForm());
        }

        return shouldClose;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
          children: const [LoginBackground(), RegisterUserByTypeLayout()],
        ),
      ),
    );
  }
}
