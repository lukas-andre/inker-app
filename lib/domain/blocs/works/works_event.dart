part of 'works_bloc.dart';

@freezed
class WorksEvent with _$WorksEvent {
  const factory WorksEvent.loadWorks(String artistId) = _LoadWorks;
  const factory WorksEvent.refresh() = _Refresh;
}