part of 'explorer_plage_bloc.dart';

enum ExplorerView {
  map,
  list,
}

class ExplorerPageState extends Equatable {
  final ExplorerView view;
  final bool isLoading;
  final bool firstLoad;
  final List<FindArtistByLocationResponse> artistFounded;

  const ExplorerPageState(
      {required this.view,
      required this.isLoading,
      required this.firstLoad,
      artistFounded})
      : artistFounded = artistFounded ?? const [];

  ExplorerPageState copyWith(
      {ExplorerView? view,
      bool? isLoading,
      bool? firstLoad,
      List<FindArtistByLocationResponse>? artistFounded}) {
    return ExplorerPageState(
        view: view ?? this.view,
        isLoading: isLoading ?? this.isLoading,
        firstLoad: firstLoad ?? this.firstLoad,
        artistFounded: artistFounded ?? this.artistFounded);
  }

  @override
  List<Object> get props => [view, isLoading, firstLoad, artistFounded];
}
