part of 'on_boarding_bloc.dart';

abstract class OnBoardingEvent extends Equatable {
  const OnBoardingEvent();

  @override
  List<Object> get props => [];
}

class OnBoardingMoveToIndex extends OnBoardingEvent {
  const OnBoardingMoveToIndex(this.index);

  final int index;

  @override
  List<Object> get props => [index];
}

class OnBoardingNextOrForward extends OnBoardingEvent {
  const OnBoardingNextOrForward(this.index);

  final int index;

  @override
  List<Object> get props => [index];
}

class OnBoardingSkipPressed extends OnBoardingEvent {
  const OnBoardingSkipPressed();
}

class OnBoardingRegisterPressed extends OnBoardingEvent {
  const OnBoardingRegisterPressed();
}

class OnBoardingSignInPressed extends OnBoardingEvent {
  const OnBoardingSignInPressed();
}

class OnBoardingClearRedirect extends OnBoardingEvent {
  const OnBoardingClearRedirect();
}
