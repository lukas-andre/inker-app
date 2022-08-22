import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'explorer_plage_event.dart';
part 'explorer_plage_state.dart';

class ExplorerPageBloc extends Bloc<ExplorerPageEvent, ExplorerPageState> {
  ExplorerPageBloc() : super(const ExplorerPageState(view: ExplorerView.list)) {
    on<ExplorerPageEventViewChanged>(_explorerPageEventViewChangedToState);
  }

  void _explorerPageEventViewChangedToState(event, emit) {
    if (state.view == event.view) {
      return;
    }
    emit(state.copyWith(view: event.view));
  }
}
