part of 'artist_stencil_bloc.dart';

@freezed
class ArtistStencilEvent with _$ArtistStencilEvent {
  const factory ArtistStencilEvent.loadStencils([@Default(false) bool includeHidden]) = _LoadStencils;
  const factory ArtistStencilEvent.loadStencilDetail(int stencilId) = _LoadStencilDetail;
  
  const factory ArtistStencilEvent.createStencil({
    required String title,
    String? description,
    required StencilSource source,
    @Default(false) bool isFeatured,
    @Default(false) bool isHidden,
    List<int>? tagIds,
    XFile? imageFile,
  }) = _CreateStencil;
  
  const factory ArtistStencilEvent.updateStencil({
    required int stencilId,
    String? title,
    String? description,
    bool? isFeatured,
    bool? isHidden,
    List<int>? tagIds,
    XFile? imageFile,
  }) = _UpdateStencil;
  
  const factory ArtistStencilEvent.deleteStencil(int stencilId) = _DeleteStencil;
  const factory ArtistStencilEvent.toggleFeatured(Stencil stencil) = _ToggleFeatured;
  const factory ArtistStencilEvent.toggleVisibility(Stencil stencil) = _ToggleVisibility;
  const factory ArtistStencilEvent.recordView(int stencilId) = _RecordView;
  const factory ArtistStencilEvent.likeStencil(int stencilId) = _LikeStencil;
  const factory ArtistStencilEvent.getTagSuggestions(String prefix) = _GetTagSuggestions;
  const factory ArtistStencilEvent.getPopularTags() = _GetPopularTags;
}