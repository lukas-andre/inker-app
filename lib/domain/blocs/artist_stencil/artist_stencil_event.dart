part of 'artist_stencil_bloc.dart';

@freezed
class ArtistStencilEvent with _$ArtistStencilEvent {
  const factory ArtistStencilEvent.loadStencils([@Default(false) bool includeHidden]) = _LoadStencils;
  const factory ArtistStencilEvent.loadStencilDetail(String stencilId) = _LoadStencilDetail;
  
  const factory ArtistStencilEvent.createStencil({
    required String title,
    String? description,
    @Default(false) bool isFeatured,
    @Default(false) bool isHidden,
    List<String>? tagIds,
    XFile? imageFile,
  }) = _CreateStencil;
  
  const factory ArtistStencilEvent.updateStencil({
    required String stencilId,
    String? title,
    String? description,
    bool? isFeatured,
    bool? isHidden,
    List<String>? tagIds,
    XFile? imageFile,
  }) = _UpdateStencil;
  
  const factory ArtistStencilEvent.deleteStencil(String stencilId) = _DeleteStencil;
  const factory ArtistStencilEvent.toggleFeatured(Stencil stencil) = _ToggleFeatured;
  const factory ArtistStencilEvent.toggleVisibility(Stencil stencil) = _ToggleVisibility;
  const factory ArtistStencilEvent.recordView(String stencilId) = _RecordView;
  const factory ArtistStencilEvent.likeStencil(String stencilId) = _LikeStencil;
  const factory ArtistStencilEvent.getTagSuggestions(String prefix) = _GetTagSuggestions;
  const factory ArtistStencilEvent.getPopularTags() = _GetPopularTags;
  const factory ArtistStencilEvent.createTag(String name) = _CreateTag;
  const factory ArtistStencilEvent.filterStencilsByTag(String tagId) = _FilterStencilsByTag;
}