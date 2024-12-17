part of 'works_bloc.dart';

@freezed
class WorksState with _$WorksState {
  const factory WorksState.initial() = _Initial;
  const factory WorksState.loading() = _Loading;
  const factory WorksState.loaded({required List<WorkItem> works}) = _Loaded;
  const factory WorksState.error({required String message}) = _Error;
}

