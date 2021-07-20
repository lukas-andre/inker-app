import 'dart:async';
import 'dart:developer' as developer;

import 'package:bloc/bloc.dart';
import 'package:inker_studio/ui/start/index.dart';

class StartBloc extends Bloc<StartEvent, StartState> {
  StartBloc(StartState initialState) : super(initialState);

  @override
  Stream<StartState> mapEventToState(
    StartEvent event,
  ) async* {
    try {
      yield* event.applyAsync(currentState: state, bloc: this);
    } catch (_, stackTrace) {
      developer.log('$_', name: 'StartBloc', error: _, stackTrace: stackTrace);
      yield state;
    }
  }
}
