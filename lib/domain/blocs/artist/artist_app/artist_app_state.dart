part of 'artist_app_bloc.dart';

class ArtistAppState extends Equatable {
  const ArtistAppState(
      {this.index = 0,
      this.isLoadingNavBar,
      required this.artistPageNavBarIcons,
      this.pgStack,
      this.isError,
      this.errorMessage});

  final int index;
  final bool? isLoadingNavBar;
  final ArtistPageNavBarIcons artistPageNavBarIcons;
  final List<int>? pgStack;
  final bool? isError;
  final String? errorMessage;

  @override
  List<Object?> get props => [
        index,
        isLoadingNavBar,
        artistPageNavBarIcons,
        pgStack,
        isError,
        errorMessage
      ];

  @override
  bool get stringify => true;

  ArtistAppState copyWith({
    int? index,
    ArtistPageNavBarIcons? artistPageNavBarIcons,
    List<int>? pgStack,
    bool? isError,
    String? errorMessage,
    bool? isLoadingNavBar,
  }) {
    return ArtistAppState(
      index: index ?? this.index,
      artistPageNavBarIcons:
          artistPageNavBarIcons ?? this.artistPageNavBarIcons,
      pgStack: pgStack ?? this.pgStack,
      isError: isError ?? this.isError,
      errorMessage: errorMessage ?? this.errorMessage,
      isLoadingNavBar: isLoadingNavBar ?? isLoadingNavBar,
    );
  }
}
