part of 'onboarding_bloc.dart';

enum OnBoardingRedirectTo {
  none,
  loginPage,
  registerPage,
}

class OnBoardingState extends Equatable {
  OnBoardingState(
      {this.page = 0,
      this.redirectTo = OnBoardingRedirectTo.none,
      PageController? pageController})
      : _pageController = pageController ?? PageController(initialPage: 0);
  final int page;
  final OnBoardingRedirectTo redirectTo;
  final PageController _pageController;

  get pageController => _pageController;

  final List<OnBoardingContent> contents = [
    OnBoardingContent.page1,
    OnBoardingContent.page2,
    OnBoardingContent.page3
  ];

  get pageNumber => page + 1;

  OnBoardingState copyWith(
          {int? page,
          PageController? pageController,
          OnBoardingRedirectTo? redirectTo}) =>
      OnBoardingState(
          page: page ?? this.page,
          redirectTo: redirectTo ?? this.redirectTo,
          pageController: pageController ?? _pageController);

  @override
  List<Object> get props => [page, contents, _pageController, redirectTo];

  @override
  bool get stringify => true;
}
