import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocNavigator {
  static void push<T extends BlocBase<Object?>>(BuildContext context, page) {
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return BlocProvider.value(value: context.read<T>(), child: page);
    }));
  }
}
