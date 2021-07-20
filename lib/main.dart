import 'package:flutter/material.dart';
import 'package:inker_studio/ui/start/start_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: StartPage());
  }
}
