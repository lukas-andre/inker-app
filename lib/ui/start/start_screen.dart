import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/ui/start/index.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({
    required StartBloc startBloc,
    Key? key,
  })  : _startBloc = startBloc,
        super(key: key);

  final StartBloc _startBloc;

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
    _load();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StartBloc, StartState>(
        bloc: widget._startBloc,
        builder: (
          BuildContext context,
          StartState currentState,
        ) {
          if (currentState is UnStartState) {
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
                    onPressed: _load,
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
        });
  }

  void _load() {
    widget._startBloc.add(LoadStartEvent());
  }
}
