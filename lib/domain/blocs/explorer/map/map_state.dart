part of 'map_bloc.dart';

class MapState extends Equatable {
  // TODO: ADD zoom
  final bool isFollowingUser;
  final bool isMapInitialized;
  final bool isDragSheetOpen;
  final MarkerId? selectedMarker;
  final Map<Marker, FindArtistByLocationResponse> markers;
  final Circle? searchRadius;
  final LatLng? currentLocation;

  const MapState(
      {this.isFollowingUser = true,
      this.isMapInitialized = false,
      this.isDragSheetOpen = false,
      this.selectedMarker,
      this.markers = const {},
      this.searchRadius,
      this.currentLocation});

  MapState copyWith({
    bool? isFollowingUser,
    bool? isMapInitialized,
    bool? isDragSheetOpen,
    MarkerId? selectedMarker,
    Map<Marker, FindArtistByLocationResponse>? markers,
    Circle? searchRadius,
    LatLng? currentLocation,
  }) {
    return MapState(
      isFollowingUser: isFollowingUser ?? this.isFollowingUser,
      isMapInitialized: isMapInitialized ?? this.isMapInitialized,
      isDragSheetOpen: isDragSheetOpen ?? this.isDragSheetOpen,
      selectedMarker: selectedMarker ?? this.selectedMarker,
      markers: markers ?? this.markers,
      searchRadius: searchRadius ?? this.searchRadius,
      currentLocation: currentLocation ?? this.currentLocation,
    );
  }

  @override
  List<Object?> get props => [
        isMapInitialized,
        isFollowingUser,
        isDragSheetOpen,
        selectedMarker,
        markers,
        searchRadius,
        currentLocation,
      ];
}
