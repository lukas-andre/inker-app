import 'dart:async';
import 'dart:developer' as developer;

import 'package:inker_studio/ui/start/index.dart';
import 'package:meta/meta.dart';

@immutable
abstract class StartEvent {
  Stream<StartState> applyAsync(
      {StartState currentState, StartBloc bloc});
}

class UnStartEvent extends StartEvent {
  @override
  Stream<StartState> applyAsync({StartState? currentState, StartBloc? bloc}) async* {
    yield UnStartState();
  }
}

class LoadStartEvent extends StartEvent {
   
  @override
  Stream<StartState> applyAsync(
      {StartState? currentState, StartBloc? bloc}) async* {
    try {
      yield UnStartState();
      await Future.delayed(const Duration(seconds: 1));
      yield InStartState('Hello world');
    } catch (_, stackTrace) {
      developer.log('$_', name: 'LoadStartEvent', error: _, stackTrace: stackTrace);
      yield ErrorStartState( _.toString());
    }
  }
}
