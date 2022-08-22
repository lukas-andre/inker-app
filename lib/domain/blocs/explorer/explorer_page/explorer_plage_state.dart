part of 'explorer_plage_bloc.dart';

enum ExplorerView {
  map,
  list,
}

class ExplorerPageState extends Equatable {
  final ExplorerView view;
  const ExplorerPageState({required this.view});

  ExplorerPageState copyWith({ExplorerView? view}) {
    return ExplorerPageState(view: view ?? this.view);
  }

  @override
  List<Object> get props => [view];
}
