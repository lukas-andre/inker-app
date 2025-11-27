import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/environment/environment.dart';
import 'package:inker_studio/domain/services/environment/environment_service.dart';

part 'environment_event.dart';
part 'environment_state.dart';
part 'environment_bloc.freezed.dart';

class EnvironmentBloc extends Bloc<EnvironmentEvent, EnvironmentState> {
  final EnvironmentService _environmentService;
  
  EnvironmentBloc({
    required EnvironmentService environmentService,
  }) : _environmentService = environmentService,
       super(const EnvironmentState.initial()) {
    on<LoadEnvironments>(_onLoadEnvironments);
    on<ChangeEnvironment>(_onChangeEnvironment);
  }
  
  Future<void> _onLoadEnvironments(
    LoadEnvironments event,
    Emitter<EnvironmentState> emit,
  ) async {
    emit(const EnvironmentState.loading());
    
    try {
      await _environmentService.initialize();
      final currentEnvironment = _environmentService.getCurrentEnvironment();
      final availableEnvironments = await _environmentService.getAvailableEnvironments();
      
      if (currentEnvironment != null && availableEnvironments != null) {
        emit(EnvironmentState.loaded(
          currentEnvironment: currentEnvironment,
          availableEnvironments: availableEnvironments,
        ));
      } else {
        emit(const EnvironmentState.error('No environments available'));
      }
    } catch (e) {
      emit(EnvironmentState.error(e.toString()));
    }
  }
  
  Future<void> _onChangeEnvironment(
    ChangeEnvironment event,
    Emitter<EnvironmentState> emit,
  ) async {
    final currentState = state;
    if (currentState is _Loaded) {
      emit(const EnvironmentState.loading());
      
      try {
        await _environmentService.setEnvironment(event.environmentId);
        final newEnvironment = _environmentService.getCurrentEnvironment();
        
        if (newEnvironment != null) {
          emit(EnvironmentState.changed(
            previousEnvironment: currentState.currentEnvironment,
            newEnvironment: newEnvironment,
          ));
          
          // After showing changed state, go back to loaded
          await Future.delayed(const Duration(seconds: 2));
          emit(EnvironmentState.loaded(
            currentEnvironment: newEnvironment,
            availableEnvironments: currentState.availableEnvironments,
          ));
        }
      } catch (e) {
        emit(EnvironmentState.error(e.toString()));
        // Restore previous state after error
        await Future.delayed(const Duration(seconds: 2));
        emit(currentState);
      }
    }
  }
}