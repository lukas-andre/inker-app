import 'package:flutter/material.dart';
import 'package:inker_studio/ui/start/index.dart';

class StartPage extends StatefulWidget {
  static const String routeName = '/start';

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  final _startBloc = StartBloc(UnStartState());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Start'),
      ),
      body: StartScreen(startBloc: _startBloc),
    );
  }
}
