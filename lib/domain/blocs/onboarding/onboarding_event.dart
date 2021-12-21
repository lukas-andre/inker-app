part of 'onboarding_bloc.dart';

abstract class OnboardingEvent extends Equatable {
  const OnboardingEvent();
  

  @override
  List<Object> get props => [

  ];
}

class OnboardingSkipButtonPressed extends OnboardingEvent{
  const OnboardingSkipButtonPressed();
}
class OnboardingPageChanged extends OnboardingEvent{
  final int page;
  const OnboardingPageChanged(this.page);
}
class OnboardingButtonSkipPressed extends OnboardingEvent{
  const OnboardingButtonSkipPressed();
}