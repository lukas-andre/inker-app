part of 'artist_app_bloc.dart';

abstract class ArtistAppEvent extends Equatable {
  const ArtistAppEvent();

  @override
  List<Object> get props => [];
}

class ArtistAppPageIndexChanged extends ArtistAppEvent {
  final int index;
  const ArtistAppPageIndexChanged({required this.index});
  @override
  List<Object> get props => [index];
}
