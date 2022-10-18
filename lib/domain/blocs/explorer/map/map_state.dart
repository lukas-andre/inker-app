part of 'map_bloc.dart';

class MapState extends Equatable {
  // TODO: ADD zoom
  final bool isFollowingUser;
  final bool isMapInitialized;
  final bool isDragSheetOpen;
  final MarkerId? selectedMarker;
  final Map<Marker, FindArtistByLocationResponse> markers;

  const MapState(
      {this.isFollowingUser = true,
      this.isMapInitialized = false,
      this.isDragSheetOpen = false,
      this.selectedMarker,
      this.markers = const {}});

  MapState copyWith({
    bool? isFollowingUser,
    bool? isMapInitialized,
    bool? isDragSheetOpen,
    MarkerId? selectedMarker,
    Map<Marker, FindArtistByLocationResponse>? markers,
  }) {
    return MapState(
      isFollowingUser: isFollowingUser ?? this.isFollowingUser,
      isMapInitialized: isMapInitialized ?? this.isMapInitialized,
      isDragSheetOpen: isDragSheetOpen ?? this.isDragSheetOpen,
      selectedMarker: selectedMarker ?? this.selectedMarker,
      markers: markers ?? this.markers,
    );
  }

  @override
  List<Object?> get props => [
        isMapInitialized,
        isFollowingUser,
        isDragSheetOpen,
        selectedMarker,
        markers,
      ];
}
