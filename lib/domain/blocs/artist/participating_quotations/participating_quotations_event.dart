part of 'participating_quotations_bloc.dart';

@freezed
class ParticipatingQuotationsEvent with _$ParticipatingQuotationsEvent {
  const factory ParticipatingQuotationsEvent.loadInitial() = _LoadInitial;
  const factory ParticipatingQuotationsEvent.refresh() = _Refresh;
  const factory ParticipatingQuotationsEvent.loadMore() = _LoadMore;
} 