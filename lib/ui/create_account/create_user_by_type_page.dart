import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/login/login_bloc.dart';
import 'package:inker_studio/ui/create_account/create_customer/create_customer_page.dart';
import 'package:inker_studio/utils/bloc_navigator.dart';
import 'package:inker_studio/utils/dev.dart';

class CreateUserByTypePage extends StatelessWidget {
  const CreateUserByTypePage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(
        builder: (_) => const CreateUserByTypePage());
  }

  static Page page() {
    return const MaterialPage<void>(child: CreateUserByTypePage());
  }
  // TODO: HACER QUE ESCUCHE A LOGIN BLOC Y VER SI VIENE DE UN SOCIAL MEDIA O FLUJO DE LOGIN LOCAL,
  // TODO: SI VIENE DE UN SOCIAL MEDIA, DEBE GATILLAR EL EVENTO DE CREAR USUARIO DE ACUERDO AL TIPO
  // TODO: SI VIENE DE UN EMAIL, DEBE GATILLAR EL EVENTO DE CREAR USUARIO CON EL FLUJO DE LOGIN LOCAL

  @override
  Widget build(BuildContext context) {
    final loginBloc = BlocProvider.of<LoginBloc>(context);

    var butttonStyle = TextButton.styleFrom(
        primary: Colors.blue,
        onSurface: Colors.red,
        elevation: 0.1,
        backgroundColor: Colors.white60,
        minimumSize: const Size(300.0, 150.0));

    return WillPopScope(
      onWillPop: () async {
        loginBloc.add(const CreateUserByTypeBackButtonPressed());

        return true;
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Create User By Type')),
        body: Align(
          alignment: const Alignment(0, -1 / 3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _CreateArtistButton(butttonStyle: butttonStyle),
              _CreateCustomerButton(butttonStyle: butttonStyle),
            ],
          ),
        ),
      ),
    );
  }
}

class _CreateArtistButton extends StatelessWidget {
  const _CreateArtistButton({
    Key? key,
    required this.butttonStyle,
  }) : super(key: key);

  final ButtonStyle butttonStyle;

  @override
  Widget build(BuildContext context) {
    final loginBloc = BlocProvider.of<LoginBloc>(context);

    return TextButton(
      child: const Text('Artist'),
      style: butttonStyle,
      onPressed: () {
        if (loginBloc.state.newUserType == NewUserType.google) {
          loginBloc.add(const CreateArtistWithGoogleSignInInfo());
        } else {
          loginBloc.add(const CreateArtistUserPressed());
          // TODO
          // BlocNavigator.push<LoginBloc>(context, CreateArtistPage);
        }
      },
    );
  }
}

class _CreateCustomerButton extends StatelessWidget {
  const _CreateCustomerButton({
    Key? key,
    required this.butttonStyle,
  }) : super(key: key);

  final ButtonStyle butttonStyle;

  @override
  Widget build(BuildContext context) {
    final loginBloc = BlocProvider.of<LoginBloc>(context);

    return TextButton(
      child: const Text('Customer'),
      style: butttonStyle,
      onPressed: () {
        dev.log(loginBloc.state.toString(), 'debug');

        if (loginBloc.state.newUserType == NewUserType.inker) {
          BlocNavigator.push<LoginBloc>(context, const CreateCustomerPage());
        }

        if (loginBloc.state.newUserType == NewUserType.google) {
          loginBloc.add(const CreateCustomerWithGoogleSignInInfo());
        }
      },
    );
  }
}
