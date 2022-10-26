part of 'map_bloc.dart';

abstract class MapEvent extends Equatable {
  const MapEvent();

  @override
  List<Object> get props => [];
}

class InitMapEvent extends MapEvent {
  final GoogleMapController mapController;
  const InitMapEvent(this.mapController);
}

class FollowLocationButtonPressedEvent extends MapEvent {
  const FollowLocationButtonPressedEvent();
}

class StopFollowingLocationEvent extends MapEvent {
  const StopFollowingLocationEvent();
}

class AddMarkersEvent extends MapEvent {
  final Map<Marker, FindArtistByLocationResponse> markers;
  const AddMarkersEvent(this.markers);
}

class MarkerSelectedEvent extends MapEvent {
  final MarkerId selectedMarkerId;
  final MarkerId? previousSelectedMarkerId;

  const MarkerSelectedEvent({
    required this.selectedMarkerId,
    required this.previousSelectedMarkerId,
  });
}

class DeselectAllMarkerEvent extends MapEvent {
  final bool closeDragSheet;
  const DeselectAllMarkerEvent({required this.closeDragSheet});
}

class MapDraggableScrollableNotificationEvent extends MapEvent {
  final DraggableScrollableNotification notification;
  const MapDraggableScrollableNotificationEvent(this.notification);
}
