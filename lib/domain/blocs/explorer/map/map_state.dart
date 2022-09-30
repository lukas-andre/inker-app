part of 'map_bloc.dart';

class MapState extends Equatable {
  // TODO: ADD zoom
  final bool isFollowingUser;
  final bool isMapInitialized;
  final Map<Marker, FindArtistByLocationResponse> markers;
  final MarkerId? selectedMarker;

  const MapState(
      {this.isFollowingUser = true,
      this.isMapInitialized = false,
      this.selectedMarker,
      this.markers = const {}});

  MapState copyWith({
    bool? isFollowingUser,
    bool? isMapInitialized,
    Map<Marker, FindArtistByLocationResponse>? markers,
    MarkerId? selectedMarker,
  }) {
    return MapState(
      isFollowingUser: isFollowingUser ?? this.isFollowingUser,
      isMapInitialized: isMapInitialized ?? this.isMapInitialized,
      markers: markers ?? this.markers,
      selectedMarker: selectedMarker ?? this.selectedMarker,
    );
  }

  @override
  List<Object?> get props =>
      [isMapInitialized, isFollowingUser, markers, selectedMarker];
}
