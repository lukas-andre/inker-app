import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocNavigator {
  static void push<T extends BlocBase<Object?>>(
      BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return BlocProvider.value(value: context.read<T>(), child: page);
    }));
  }

  static pushAndRemoveUntil<T extends BlocBase<Object?>>(
      BuildContext context, Widget page) {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) {
      return BlocProvider.value(value: context.read<T>(), child: page);
    }), (route) => false);
  }
}

class InkerNavigator {
  static void push(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => page));
  }

  static void pop(BuildContext context) {
    Navigator.pop(context);
  }

  static pushAndRemoveUntil(BuildContext context, page) {
    Navigator.pushAndRemoveUntil(
        context, MaterialPageRoute(builder: (_) => page), (route) => false);
  }

  // static pushAndRemoveUntil2<T>(BuildContext context, page, T predicate) {
  //   Navigator.p
  // }
}

class NoContextNavigator {
  static void push<T extends BlocBase<Object?>>(
      NavigatorState navigator, page) {
    navigator.push(MaterialPageRoute(builder: (_) => page));
  }

  static pushAndRemoveUntil(NavigatorState navigator, page) {
    navigator.pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => page), (route) => false);
  }
}
