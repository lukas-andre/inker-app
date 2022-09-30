part of 'map_bloc.dart';

abstract class MapEvent extends Equatable {
  const MapEvent();

  @override
  List<Object> get props => [];
}

class OnInitMapEvent extends MapEvent {
  final GoogleMapController mapController;
  const OnInitMapEvent(this.mapController);
}

class OnFollowLocationButtonPressedEvent extends MapEvent {
  const OnFollowLocationButtonPressedEvent();
}

class OnStopFollowingLocation extends MapEvent {
  const OnStopFollowingLocation();
}

class OnAddMarkersEvent extends MapEvent {
  final Map<Marker, FindArtistByLocationResponse> markers;
  const OnAddMarkersEvent(this.markers);
}

class OnMarkerSelectedEvent extends MapEvent {
  final MarkerId marker;

  const OnMarkerSelectedEvent({
    required this.marker,
  });
}
