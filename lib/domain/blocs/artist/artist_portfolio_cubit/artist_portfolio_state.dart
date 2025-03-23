part of 'artist_portfolio_cubit.dart';

@freezed
class ArtistPortfolioState with _$ArtistPortfolioState {
  const factory ArtistPortfolioState.initial() = _Initial;
  const factory ArtistPortfolioState.loading() = _Loading;
  const factory ArtistPortfolioState.loaded({
    required List<Stencil> stencils,
    required List<Work> works,
  }) = _Loaded;
  const factory ArtistPortfolioState.error({required String message}) = _Error;
}