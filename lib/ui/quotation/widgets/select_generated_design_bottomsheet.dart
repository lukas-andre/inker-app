import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/tattoo_generator/tattoo_generator_bloc.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:cached_network_image/cached_network_image.dart';

class SelectGeneratedDesignBottomSheet extends StatefulWidget {
  const SelectGeneratedDesignBottomSheet({super.key});

  @override
  State<SelectGeneratedDesignBottomSheet> createState() =>
      _SelectGeneratedDesignBottomSheetState();
}

class _SelectGeneratedDesignBottomSheetState
    extends State<SelectGeneratedDesignBottomSheet>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    // Cargar historial al abrir
    context
        .read<TattooGeneratorBloc>()
        .add(const TattooGeneratorEvent.loadHistory());
    _tabController.addListener(_onTabChange);
  }

  void _onTabChange() {
    if (_tabController.indexIsChanging) return;
    if (_tabController.index == 0) {
      context
          .read<TattooGeneratorBloc>()
          .add(const TattooGeneratorEvent.loadHistory());
    } else {
      context
          .read<TattooGeneratorBloc>()
          .add(const TattooGeneratorEvent.loadFavorites());
    }
  }

  @override
  void dispose() {
    _tabController.removeListener(_onTabChange);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double sheetHeight = MediaQuery.of(context).size.height * 0.75;
    return Container(
      height: sheetHeight,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Row(
              children: [
                Icon(Icons.auto_awesome_outlined,
                    color: Theme.of(context).colorScheme.secondary, size: 24),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Selecciona un diseño generado',
                    style: TextStyleTheme.headline3
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
          ),
          // Tabs
          TabBar(
            controller: _tabController,
            indicatorColor: Theme.of(context).colorScheme.secondary,
            labelColor: Theme.of(context).colorScheme.secondary,
            unselectedLabelColor: Colors.white70,
            tabs: const [
              Tab(text: 'Historial'),
              Tab(text: 'Favoritos'),
            ],
          ),
          const SizedBox(height: 8),
          Expanded(
            child: BlocBuilder<TattooGeneratorBloc, TattooGeneratorState>(
              builder: (context, state) {
                return state.maybeWhen(
                  historyLoading: () => Center(
                      child: CircularProgressIndicator(
                          color: Theme.of(context).colorScheme.secondary)),
                  historyLoaded: (designs, favoritesOnly) {
                    // Filtrar según tab
                    final showFavorites = _tabController.index == 1;
                    final filtered = showFavorites
                        ? designs.where((d) => d.isFavorite == true).toList()
                        : designs;
                    if (filtered.isEmpty) {
                      return _EmptyState(
                        message: showFavorites
                            ? 'No tienes diseños favoritos aún.'
                            : 'No tienes diseños generados aún.',
                      );
                    }
                    return RefreshIndicator(
                      onRefresh: () async {
                        if (showFavorites) {
                          context.read<TattooGeneratorBloc>().add(
                              const TattooGeneratorEvent.refreshFavorites());
                        } else {
                          context
                              .read<TattooGeneratorBloc>()
                              .add(const TattooGeneratorEvent.refreshHistory());
                        }
                        await Future.delayed(
                            const Duration(milliseconds: 1200));
                      },
                      // color: Theme.of(context).colorScheme.secondary,
                      // backgroundColor: Theme.of(context).colorScheme.secondary,
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        itemCount: filtered.length,
                        itemBuilder: (context, index) {
                          final design = filtered[index];
                          final imageUrl = design.imageUrls.isNotEmpty
                              ? design.imageUrls.first
                              : null;
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop({
                                'design': design,
                                'imageUrl': imageUrl,
                              });
                            },
                            child: Card(
                              // color: Theme.of(context).colorScheme.secondary,
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14)),
                              margin: const EdgeInsets.only(bottom: 14),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(14),
                                      bottomLeft: Radius.circular(14),
                                    ),
                                    child: imageUrl != null
                                        ? CachedNetworkImage(
                                            imageUrl: imageUrl,
                                            width: 90,
                                            height: 90,
                                            fit: BoxFit.cover,
                                            placeholder: (c, u) => Container(
                                              width: 90,
                                              height: 90,
                                              color: Colors.black12,
                                              child: Center(
                                                  child:
                                                      CircularProgressIndicator(
                                                          strokeWidth: 2,
                                                          color:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .secondary)),
                                            ),
                                            errorWidget: (c, u, e) => Container(
                                              width: 90,
                                              height: 90,
                                              color: Colors.black12,
                                              child: Icon(Icons.broken_image,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .tertiary),
                                            ),
                                          )
                                        : Container(
                                            width: 90,
                                            height: 90,
                                            color: Colors.black12,
                                            child: Icon(Icons.image,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary),
                                          ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            design.userQuery,
                                            style: TextStyleTheme.bodyText1
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.bold),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(height: 6),
                                          Row(
                                            children: [
                                              Icon(Icons.style,
                                                  size: 16,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .secondary),
                                              const SizedBox(width: 4),
                                              Text(
                                                design.style ?? '-',
                                                style: TextStyleTheme.caption
                                                    .copyWith(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .secondary),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 6),
                                          Text(
                                            design.createdAt != null
                                                ? _formatDate(design.createdAt!)
                                                : 'Fecha desconocida',
                                            style: TextStyleTheme.caption
                                                .copyWith(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .onPrimary),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  if (design.isFavorite == true)
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 8, right: 8),
                                      child: Icon(Icons.favorite,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .error,
                                          size: 20),
                                    ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                  error: (msg) => _EmptyState(message: msg),
                  orElse: () => Center(
                      child: CircularProgressIndicator(
                          color: Theme.of(context).colorScheme.secondary)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final diff = now.difference(date);
    if (diff.inDays < 1) {
      if (diff.inHours < 1) {
        return '${diff.inMinutes} min atrás';
      }
      return '${diff.inHours} h atrás';
    } else if (diff.inDays < 7) {
      return '${diff.inDays} días atrás';
    } else {
      return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
    }
  }
}

class _EmptyState extends StatelessWidget {
  final String message;
  const _EmptyState({required this.message});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.auto_awesome_outlined,
                color: Theme.of(context).colorScheme.secondary, size: 48),
            const SizedBox(height: 18),
            Text(
              message,
              style: TextStyleTheme.bodyText1
                  .copyWith(color: Theme.of(context).colorScheme.tertiary),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
