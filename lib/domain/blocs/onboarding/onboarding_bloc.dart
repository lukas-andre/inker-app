import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:inker_studio/domain/models/onboarding/onboarding_info.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super( OnboardingState()) {
    on<OnboardingEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<OnboardingPageChanged>((event, emit){
      emit(state.copyWith(selectedPageIndex: event.page));

    });
    on<OnboardingButtonSkipPressed>((event, emit){
      emit(state.copyWith(skiped: true));
    });
    
  }
}
