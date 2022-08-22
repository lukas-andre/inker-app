part of 'map_bloc.dart';

class MapState extends Equatable {
  // TODO: ADD zoom
  final bool isFollowingUser;
  final bool isMapInitialized;

  const MapState({this.isFollowingUser = true, this.isMapInitialized = false});

  MapState copyWith({
    bool? isFollowingUser,
    bool? isMapInitialized,
  }) {
    return MapState(
      isFollowingUser: isFollowingUser ?? this.isFollowingUser,
      isMapInitialized: isMapInitialized ?? this.isMapInitialized,
    );
  }

  @override
  List<Object> get props => [isMapInitialized, isFollowingUser];
}
