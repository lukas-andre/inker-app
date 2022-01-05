import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:inker_studio/domain/blocs/login/login_bloc.dart';
import 'package:inker_studio/domain/models/user/user_type.dart';

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
    var butttonStyle = TextButton.styleFrom(
        primary: Colors.blue,
        onSurface: Colors.red,
        elevation: 0.1,
        backgroundColor: Colors.white60,
        minimumSize: const Size(300.0, 150.0));

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.newUserType == NewUserType.google &&
            state.userTypeToCreate == UserType.customer) {
          BlocProvider.of<LoginBloc>(context)
              .add(const CreateCustomerWithGoogleSignInInfo());
        }

        if (state.newUserType == NewUserType.inker &&
            state.userTypeToCreate == UserType.customer) {
          BlocProvider.of<LoginBloc>(context)
              .add(const CreateCustomerWithInkerFormInfo());
        }
      },
      child: WillPopScope(
        onWillPop: () async {
          final state = context.read<LoginBloc>().state;
          if (state.status.isSubmissionInProgress) {
            BlocProvider.of<LoginBloc>(context)
                .add(const CreateUserByTypeBackButtonPressed());
            return true;
          }
          return false;
        },
        child: Scaffold(
          appBar: AppBar(title: const Text('Create User By Type')),
          body: Align(
            alignment: const Alignment(0, -1 / 3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  style: butttonStyle,
                  onPressed: () {
                    if (context.read<LoginBloc>().state.newUserType ==
                        NewUserType.google) {
                      BlocProvider.of<LoginBloc>(context)
                          .add(const CreateArtistWithGoogleSignInInfo());
                    } else {
                      BlocProvider.of<LoginBloc>(context)
                          .add(const CreateArtistUserPressed());
                    }
                  },
                  child: const Text('Artist'),
                ),
                TextButton(
                  style: butttonStyle,
                  onPressed: () {
                    if (context.read<LoginBloc>().state.newUserType ==
                        NewUserType.google) {
                      context
                          .read<LoginBloc>()
                          .add(const CreateCustomerWithGoogleSignInInfo());
                    } else {
                      context
                          .read<LoginBloc>()
                          .add(const CreateCustomerUserPressed());
                    }
                  },
                  child: const Text('Customer'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
