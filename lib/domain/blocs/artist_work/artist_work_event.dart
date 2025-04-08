part of 'artist_work_bloc.dart';

@freezed
class ArtistWorkEvent with _$ArtistWorkEvent {
  const factory ArtistWorkEvent.loadWorks([@Default(false) bool includeHidden]) = _LoadWorks;
  const factory ArtistWorkEvent.loadWorkDetail(String workId) = _LoadWorkDetail;
  
  const factory ArtistWorkEvent.createWork({
    required String title,
    String? description,
    @Default(false) bool isFeatured,
    @Default(false) bool isHidden,
    List<String>? tagIds,
    XFile? imageFile,
    @Default(WorkSource.app) WorkSource source,
  }) = _CreateWork;
  
  const factory ArtistWorkEvent.updateWork({
    required String workId,
    String? title,
    String? description,
    bool? isFeatured,
    bool? isHidden,
    List<String>? tagIds,
    XFile? imageFile,
    WorkSource? source,
  }) = _UpdateWork;
  
  const factory ArtistWorkEvent.deleteWork(String workId) = _DeleteWork;
  const factory ArtistWorkEvent.toggleFeatured(Work work) = _ToggleFeatured;
  const factory ArtistWorkEvent.toggleVisibility(Work work) = _ToggleVisibility;
  const factory ArtistWorkEvent.recordView(String workId) = _RecordView;
  const factory ArtistWorkEvent.likeWork(String workId) = _LikeWork;
  const factory ArtistWorkEvent.getTagSuggestions(String prefix) = _GetTagSuggestions;
  const factory ArtistWorkEvent.getPopularTags() = _GetPopularTags;
  const factory ArtistWorkEvent.createTag(String name) = _CreateTag;
  const factory ArtistWorkEvent.filterWorksByTag(String tagId) = _FilterWorksByTag;
}