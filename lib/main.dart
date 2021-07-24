import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/dependencies/dependencies.dart';
import 'package:inker_studio/ui/views/app_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: buildProviders(),
      child: AppView(),
    );
  }
}
