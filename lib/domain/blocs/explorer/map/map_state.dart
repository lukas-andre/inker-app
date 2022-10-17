part of 'map_bloc.dart';

class MapState extends Equatable {
  // TODO: ADD zoom
  final bool isFollowingUser;
  final bool isMapInitialized;
  final Map<Marker, FindArtistByLocationResponse> markers;
  final MarkerId? selectedMarker;
  final bool isDragSheetOpen;

  const MapState(
      {this.isFollowingUser = true,
      this.isMapInitialized = false,
      this.selectedMarker,
      this.isDragSheetOpen = false,
      this.markers = const {}});

  MapState copyWith({
    bool? isFollowingUser,
    bool? isMapInitialized,
    Map<Marker, FindArtistByLocationResponse>? markers,
    bool? isDragSheetOpen,
    MarkerId? selectedMarker,
  }) {
    return MapState(
      isFollowingUser: isFollowingUser ?? this.isFollowingUser,
      isMapInitialized: isMapInitialized ?? this.isMapInitialized,
      markers: markers ?? this.markers,
      isDragSheetOpen: isDragSheetOpen ?? this.isDragSheetOpen,
      selectedMarker: selectedMarker ?? this.selectedMarker,
    );
  }

  @override
  List<Object?> get props => [
        isMapInitialized,
        isFollowingUser,
        selectedMarker,
        isDragSheetOpen,
        markers,
      ];
}
