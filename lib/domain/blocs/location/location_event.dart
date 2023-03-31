part of 'location_bloc.dart';

abstract class LocationEvent extends Equatable {
  const LocationEvent();

  @override
  List<Object> get props => [];
}

class OnNewUserLocationEvent extends LocationEvent {
  final LatLng location;
  const OnNewUserLocationEvent(this.location);
}

class OnStartFollowingUserEvent extends LocationEvent {
  const OnStartFollowingUserEvent();
}

class OnStopFollowingUserEvent extends LocationEvent {
  const OnStopFollowingUserEvent();
}
