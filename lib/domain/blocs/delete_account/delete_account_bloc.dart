import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/domain/services/user/user_service.dart';

part 'delete_account_bloc.freezed.dart';
part 'delete_account_event.dart';
part 'delete_account_state.dart';

class DeleteAccountBloc extends Bloc<DeleteAccountEvent, DeleteAccountState> {
  final UserService _userService;
  final LocalSessionService _localSessionService;

  DeleteAccountBloc({
    required UserService userService,
    required LocalSessionService localSessionService,
  })  : _userService = userService,
        _localSessionService = localSessionService,
        super(const DeleteAccountState.initial()) {
    on<DeleteAccountEvent>((event, emit) => event.map(
          requested: (event) => _onDeleteAccountRequested(event, emit),
        ));
  }

  Future<void> _onDeleteAccountRequested(
    DeleteAccountEvent event,
    Emitter<DeleteAccountState> emit,
  ) async {
    try {
      emit(const DeleteAccountState.inProgress());
      final token = await _localSessionService.getActiveSessionToken();
      if (token == null) {
        emit(const DeleteAccountState.failure(error: 'No active session'));
        return;
      }
      await _userService.deleteAccount(token, event.password);
      emit(const DeleteAccountState.success());
    } catch (e) {
      emit(DeleteAccountState.failure(error: e.toString()));
    }
  }
}
