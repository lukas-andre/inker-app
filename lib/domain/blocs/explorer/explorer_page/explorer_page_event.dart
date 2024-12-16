part of 'explorer_page_bloc.dart';

abstract class ExplorerPageEvent extends Equatable {
  const ExplorerPageEvent();

  @override
  List<Object> get props => [];
}

class ExplorerPageEventViewChanged extends ExplorerPageEvent {
  final ExplorerView view;
  const ExplorerPageEventViewChanged({required this.view});

  @override
  List<Object> get props => [view];
}

class ExplorerPageFetchArtists extends ExplorerPageEvent {
  final LatLng location;
  const ExplorerPageFetchArtists({required this.location});
  @override
  List<Object> get props => [location];
}

class ExplorerPageUpdateRange extends ExplorerPageEvent {
  final double range;
  const ExplorerPageUpdateRange({required this.range});
  @override
  List<Object> get props => [range];
}


class UpdateSearchRadiusEvent extends MapEvent {
  final double radiusInKm;
  final LatLng center;
  
  const UpdateSearchRadiusEvent({
    required this.radiusInKm,
    required this.center,
  });
  
  @override
  List<Object> get props => [radiusInKm, center];
}
