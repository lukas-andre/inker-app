import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/login/login_bloc.dart';
import 'package:inker_studio/domain/models/user/user_type.dart';
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
    var butttonStyle = TextButton.styleFrom(
        primary: Colors.blue,
        onSurface: Colors.red,
        elevation: 0.1,
        backgroundColor: Colors.white60,
        minimumSize: const Size(300.0, 150.0));

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        // if (state.newUserType == NewUserType.google &&
        //     state.userTypeToCreate == UserType.customer) {
        //   BlocProvider.of<LoginBloc>(context)
        //       .add(const CreateCustomerWithGoogleSignInInfo());
        // }

        if (state.newUserType == NewUserType.inker &&
            state.userTypeToCreate == UserType.customer) {
          BlocNavigator.push<LoginBloc>(context, const CreateCustomerPage());
        }
      },
      child: WillPopScope(
        onWillPop: () async {
          BlocProvider.of<LoginBloc>(context)
              .add(const CreateUserByTypeBackButtonPressed());

          return true;
        },
        child: Scaffold(
          appBar: AppBar(title: const Text('Create User By Type')),
          body: Align(
            alignment: const Alignment(0, -1 / 3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  child: const Text('Artist'),
                  style: butttonStyle,
                  onPressed: () {
                    if (context.read<LoginBloc>().state.newUserType ==
                        NewUserType.google) {
                      BlocProvider.of<LoginBloc>(context)
                          .add(const CreateArtistWithGoogleSignInInfo());
                    } else {
                      // BlocNavigator.push(contex: ));
                      BlocProvider.of<LoginBloc>(context)
                          .add(const CreateArtistUserPressed());
                    }
                  },
                ),
                TextButton(
                  child: const Text('Customer'),
                  style: butttonStyle,
                  onPressed: () {
                    final state = context.read<LoginBloc>().state;
                    dev.log(state.toString(), 'debug');

                    if (state.newUserType == NewUserType.inker) {
                      BlocNavigator.push<LoginBloc>(
                          context, const CreateCustomerPage());
                    }

                    if (context.read<LoginBloc>().state.newUserType ==
                        NewUserType.google) {
                      context
                          .read<LoginBloc>()
                          .add(const CreateCustomerWithGoogleSignInInfo());
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
