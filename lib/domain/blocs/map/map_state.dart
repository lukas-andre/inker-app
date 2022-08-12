part of 'map_bloc.dart';

class MapState extends Equatable {
  // TODO: ADD zoom
  final bool followingUser;
  final bool isMapInitialized;

  const MapState({this.followingUser = false, this.isMapInitialized = false});

  MapState copyWith({
    bool? followingUser,
    bool? isMapInitialized,
  }) {
    return MapState(
      followingUser: followingUser ?? this.followingUser,
      isMapInitialized: isMapInitialized ?? this.isMapInitialized,
    );
  }

  @override
  List<Object> get props => [isMapInitialized, followingUser];
}
