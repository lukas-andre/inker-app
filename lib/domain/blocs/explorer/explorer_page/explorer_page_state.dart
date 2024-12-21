part of 'explorer_page_bloc.dart';

enum ExplorerView {
  map,
  list,
}


class ExplorerPageState extends Equatable {
  final ExplorerView view;
  final bool isLoading;
  final bool firstLoad;
  final List<FindArtistByLocationResponse> artistFounded;
  final double range;

  const ExplorerPageState({
    required this.view,
    required this.isLoading,
    required this.firstLoad,
    artistFounded,
    this.range = 5.0,  // valor por defecto
  }) : artistFounded = artistFounded ?? const [];

  ExplorerPageState copyWith({
    ExplorerView? view,
    bool? isLoading,
    bool? firstLoad,
    List<FindArtistByLocationResponse>? artistFounded,
    double? range,
  }) {
    return ExplorerPageState(
      view: view ?? this.view,
      isLoading: isLoading ?? this.isLoading,
      firstLoad: firstLoad ?? this.firstLoad,
      artistFounded: artistFounded ?? this.artistFounded,
      range: range ?? this.range,
    );
  }

  @override
  List<Object> get props => [view, isLoading, firstLoad, artistFounded, range];
}