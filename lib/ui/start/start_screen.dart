import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/models/session/session.dart';
import 'package:inker_studio/domain/models/user/user.dart';
import 'package:inker_studio/ui/start/index.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({
    Key? key,
  }) : super(key: key);

  @override
  StartScreenState createState() {
    return StartScreenState();
  }
}

class StartScreenState extends State<StartScreen> {
  StartScreenState();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StartBloc(UnStartState(), context.read()),
      child: BlocBuilder<StartBloc, StartState>(builder: (
        BuildContext context,
        StartState currentState,
      ) {
        // TODO: DEJAR DE USAR DE ESTA FORMA BLOC POR LA XUXA PORQUE SE INICIA COMO 3 VECES
        print('currentState: $currentState');
        if (currentState is UnStartState) {
          final user = new User(
              email: 'adsada',
              fullname: 'asdada',
              id: 1,
              profileThumbnail: null,
              userType: 'asdad',
              userTypeId: 2,
              username: 'asda');

          context
              .read<StartBloc>()
              .sessionDbService
              .newSession(Session(user, 'asddsadad', 'expireIn'));
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (currentState is ErrorStartState) {
          return Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(currentState.errorMessage),
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: RaisedButton(
                  color: Colors.blue,
                  child: Text('reload'),
                  onPressed: () {
                    context.read<StartBloc>().add(LoadStartEvent());
                  },
                ),
              ),
            ],
          ));
        }
        if (currentState is InStartState) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(currentState.hello),
              ],
            ),
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      }),
    );
  }
}
