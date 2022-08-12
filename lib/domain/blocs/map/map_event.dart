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
