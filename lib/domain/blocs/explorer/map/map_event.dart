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

class OnStopFollowingLocationEvent extends MapEvent {
  const OnStopFollowingLocationEvent();
}

class OnAddMarkersEvent extends MapEvent {
  final Map<Marker, FindArtistByLocationResponse> markers;
  const OnAddMarkersEvent(this.markers);
}

class OnMarkerSelectedEvent extends MapEvent {
  final MarkerId selectedMarkerId;
  final MarkerId? previousSelectedMarkerId;

  const OnMarkerSelectedEvent({
    required this.selectedMarkerId,
    required this.previousSelectedMarkerId,
  });
}

class DeselectAllMarkerEvent extends MapEvent {
  final bool closeDragSheet;
  const DeselectAllMarkerEvent({required this.closeDragSheet});
}

class OnMapDraggableScrollableNotificationEvent extends MapEvent {
  final DraggableScrollableNotification notification;
  const OnMapDraggableScrollableNotificationEvent(this.notification);
}
