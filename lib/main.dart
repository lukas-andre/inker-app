import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/dependencies/dependencies.dart';
import 'package:inker_studio/ui/start/start_page.dart';
import 'package:inker_studio/ui/theme/app_theme_cubit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: buildProviders(),
        child: BlocProvider(
          create: (BuildContext context) =>
              AppThemeCubit(context.read())..init(),
          child: BlocBuilder<AppThemeCubit, bool>(builder: (context, snapshot) {
            return MaterialApp(
                title: 'Material App',
                theme: snapshot ? ThemeData.dark() : ThemeData.light(),
                home: StartPage());
          }),
        ));
  }
}
