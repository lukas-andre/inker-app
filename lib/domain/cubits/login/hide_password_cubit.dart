import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'hide_password_state.dart';

class HidePasswordCubit extends Cubit<HidePasswordState> {
  HidePasswordCubit() : super(HidePasswordInitial());

  void toggle() {
    emit(state is HidePasswordInitial
        ? HidePasswordVisible()
        : HidePasswordInitial());
  }
}
