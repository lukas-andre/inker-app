import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/dependencies/dependencies.dart';
import 'package:inker_studio/domain/blocs/custom_bloc_observer.dart';
import 'package:inker_studio/ui/views/app_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  BlocOverrides.runZoned(
    () {
      runApp(const MyApp());
    },
    blocObserver: CustomBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: buildProviders(),
      child: const AppView(),
    );
  }
}
