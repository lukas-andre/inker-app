import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/on_boarding/on_boarding_content.dart';

part 'on_boarding_event.dart';
part 'on_boarding_state.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc() : super(OnBoardingState()) {
    on<OnBoardingMoveToIndex>((event, emit) {
      _mapOnBoardingMoveToIndexToState(event, emit.call);
    });

    on<OnBoardingNextOrForward>((event, emit) {
      _mapOnBoardingNextOrForwardToState(event, emit);
    });

    on<OnBoardingSkipPressed>((event, emit) {
      _mapOnBoardingSkipPressedToState(event, emit);
    });
    on<OnBoardingRegisterPressed>((event, emit) {
      _mapOnBoardingRegisterPressedToState(event, emit);
    });
    on<OnBoardingSignInPressed>((event, emit) {
      _mapOnBoardingSignInPressedToState(event, emit);
    });
    on<OnBoardingClearRedirect>(
        (event, emit) => _mapOnBoardingClearRedirectToState(event, emit));
  }

  void _mapOnBoardingMoveToIndexToState(
      OnBoardingMoveToIndex event, Function emit) {
    state._pageController.animateToPage(
      event.index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
    emit(state.copyWith(page: event.index));
  }

  void _mapOnBoardingNextOrForwardToState(
      OnBoardingNextOrForward event, Emitter<OnBoardingState> emit) {
    emit(state.copyWith(
      page: event.index,
    ));
  }

  void _mapOnBoardingSkipPressedToState(
      OnBoardingSkipPressed event, Emitter<OnBoardingState> emit) {
    state._pageController.animateToPage(
      state.contents.length - 1,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  void _mapOnBoardingRegisterPressedToState(
      OnBoardingRegisterPressed event, Emitter<OnBoardingState> emit) {
    emit(state.copyWith(redirectTo: OnBoardingRedirectTo.registerPage));
  }

  void _mapOnBoardingSignInPressedToState(
      OnBoardingSignInPressed event, Emitter<OnBoardingState> emit) {
    emit(state.copyWith(redirectTo: OnBoardingRedirectTo.loginPage));
  }

  void _mapOnBoardingClearRedirectToState(
      OnBoardingClearRedirect event, Emitter<OnBoardingState> emit) {
    emit(state.copyWith(redirectTo: OnBoardingRedirectTo.none));
  }
}
