part of 'explorer_plage_bloc.dart';

abstract class ExplorerPageEvent extends Equatable {
  const ExplorerPageEvent();

  @override
  List<Object> get props => [];
}

class ExplorerPageEventViewChanged extends ExplorerPageEvent {
  final ExplorerView view;
  const ExplorerPageEventViewChanged({required this.view});

  @override
  List<Object> get props => [view];
}
