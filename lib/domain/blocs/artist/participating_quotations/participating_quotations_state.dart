part of 'participating_quotations_bloc.dart';

@freezed
class ParticipatingQuotationsState with _$ParticipatingQuotationsState {
  const ParticipatingQuotationsState._();

  const factory ParticipatingQuotationsState.initial() = _Initial;

  const factory ParticipatingQuotationsState.loading() = _Loading;

  const factory ParticipatingQuotationsState.refreshing({
    @Default([]) List<ParticipatingQuotationItemDto> items,
    @Default(0) int currentPage,
    @Default(0) int totalItems,
  }) = _Refreshing;

  const factory ParticipatingQuotationsState.loadingMore({
    @Default([]) List<ParticipatingQuotationItemDto> items,
    @Default(0) int currentPage,
    @Default(0) int totalItems,
  }) = _LoadingMore;

  const factory ParticipatingQuotationsState.loaded({
    @Default([]) List<ParticipatingQuotationItemDto> items,
    @Default(0) int currentPage,
    @Default(0) int totalItems,
  }) = _Loaded;

  const factory ParticipatingQuotationsState.error({
    required String message,
    @Default([]) List<ParticipatingQuotationItemDto> items,
    @Default(0) int currentPage,
    @Default(0) int totalItems,
  }) = _Error;

  List<ParticipatingQuotationItemDto> get items {
    return maybeWhen(
      loaded: (items, _, __) => items,
      refreshing: (items, _, __) => items,
      loadingMore: (items, _, __) => items,
      error: (_, items, __, ___) => items,
      orElse: () => const [],
    );
  }

  int get currentPage {
    return maybeWhen(
      loaded: (_, currentPage, __) => currentPage,
      refreshing: (_, currentPage, __) => currentPage,
      loadingMore: (_, currentPage, __) => currentPage,
      error: (_, __, currentPage, ___) => currentPage,
      orElse: () => 0,
    );
  }

  int get totalItems {
    return maybeWhen(
      loaded: (_, __, totalItems) => totalItems,
      refreshing: (_, __, totalItems) => totalItems,
      loadingMore: (_, __, totalItems) => totalItems,
      error: (_, __, ___, totalItems) => totalItems,
      orElse: () => 0,
    );
  }

  bool get isLoading => maybeMap(
        loading: (_) => true,
        orElse: () => false,
      );

  bool get isRefreshing => maybeMap(
        refreshing: (_) => true,
        orElse: () => false,
      );

  bool get isLoadingMore => maybeMap(
        loadingMore: (_) => true,
        orElse: () => false,
      );

  bool get hasError => maybeMap(
        error: (_) => true,
        orElse: () => false,
      );

  String? get errorMessage => maybeMap(
        error: (state) => state.message,
        orElse: () => null,
      );
} 