import 'dart:async';
import 'dart:developer' as developer;

import 'package:bloc/bloc.dart';
import 'package:inker_studio/domain/services/session/session_service.dart';
import 'package:inker_studio/ui/start/index.dart';

class StartBloc extends Bloc<StartEvent, StartState> {
  StartBloc(StartState initialState, this.sessionDbService)
      : super(initialState);

  final LocalSessionService sessionDbService;

  @override
  Stream<StartState> mapEventToState(
    StartEvent event,
  ) async* {
    try {
      print('event: $event');
      if (event is UnStartEvent) {
        yield UnStartState();
      } else if (event is LoadStartEvent) {
        // yiel
      }
    } catch (_, stackTrace) {
      developer.log('$_', name: 'StartBloc', error: _, stackTrace: stackTrace);
      yield state;
    }
  }
}
