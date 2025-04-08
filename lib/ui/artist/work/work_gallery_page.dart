import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/api/work/dtos/work_dto.dart';
import 'package:inker_studio/domain/blocs/artist_work/artist_work_bloc.dart';
import 'package:inker_studio/domain/models/tag/tag.dart';
import 'package:inker_studio/domain/models/work/work.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/image/cached_image_manager.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class WorkGalleryPage extends StatefulWidget {
  const WorkGalleryPage({super.key});

  @override
  State<WorkGalleryPage> createState() => _WorkGalleryPageState();
}

class _WorkGalleryPageState extends State<WorkGalleryPage> {
  final TextEditingController _searchController = TextEditingController();
  final List<Work> _selectedWorks = [];
  bool _isSelectMode = false;
  bool _showHidden = false;
  String? _filterTag;
  String? _filterTagId;
  WorkSource? _filterSource;
  
  // Instancia del gestor de caché
  final _imageCache = CachedImageManager();

  @override
  void initState() {
    super.initState();
    _loadWorks();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _loadWorks() {
    // Si hay un filtro de tag activo, aplicarlo, de lo contrario cargar todos
    if (_filterTagId != null) {
      context
          .read<ArtistWorkBloc>()
          .add(ArtistWorkEvent.filterWorksByTag(_filterTagId!));
    } else {
      context
          .read<ArtistWorkBloc>()
          .add(ArtistWorkEvent.loadWorks(_showHidden));
    }
  }
  
  // Método para precargar imágenes de la galería
  void _preloadWorkImages(List<Work> works) {
    if (works.isEmpty || !mounted) return;
    
    // Extraer URLs de imágenes de works
    final imageUrls = works.map((work) => 
      work.thumbnailUrl ?? work.imageUrl
    ).where((url) => url.isNotEmpty).toList();
    
    // Precargar las primeras 20 imágenes para rendimiento óptimo
    if (imageUrls.isNotEmpty) {
      _imageCache.preloadImages(
        imageUrls.take(20).toList(),
        context,
      );
    }
  }

  void _toggleSelectMode() {
    setState(() {
      _isSelectMode = !_isSelectMode;
      _selectedWorks.clear();
    });
  }

  void _toggleWorkSelection(Work work) {
    setState(() {
      if (_selectedWorks.contains(work)) {
        _selectedWorks.remove(work);
      } else {
        _selectedWorks.add(work);
      }
    });
  }

  void _toggleVisibilityForSelected() {
    for (final work in _selectedWorks) {
      context
          .read<ArtistWorkBloc>()
          .add(ArtistWorkEvent.toggleVisibility(work));
    }
    setState(() {
      _isSelectMode = false;
      _selectedWorks.clear();
    });
  }

  void _toggleFeaturedForSelected() {
    for (final work in _selectedWorks) {
      context.read<ArtistWorkBloc>().add(ArtistWorkEvent.toggleFeatured(work));
    }
    setState(() {
      _isSelectMode = false;
      _selectedWorks.clear();
    });
  }

  void _deleteSelected() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor:
              HSLColor.fromColor(primaryColor).withLightness(0.2).toColor(),
          title: Text(
            S.of(context).deleteSelectedWorks,
            style: TextStyleTheme.headline3.copyWith(
              color: Colors.white,
            ),
          ),
          content: Text(
            S.of(context).areYouSureYouWantToDeleteTheseWorks,
            style: TextStyleTheme.bodyText1.copyWith(
              color: Colors.white,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                S.of(context).cancel,
                style: TextStyleTheme.button.copyWith(
                  color: Colors.grey.shade400,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                for (final work in _selectedWorks) {
                  context
                      .read<ArtistWorkBloc>()
                      .add(ArtistWorkEvent.deleteWork(work.id));
                }
                setState(() {
                  _isSelectMode = false;
                  _selectedWorks.clear();
                });
              },
              child: Text(
                S.of(context).delete,
                style: TextStyleTheme.button.copyWith(
                  color: Colors.red,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _applyFilters() {
    _loadWorks();
    Navigator.pop(context);
  }

  void _resetFilters() {
    setState(() {
      _showHidden = false;
      _filterTag = null;
      _filterTagId = null;
      _filterSource = null;
    });
    _loadWorks();
    Navigator.pop(context);
  }

  void _showFilterModal() {
    showModalBottomSheet(
      context: context,
      backgroundColor:
          HSLColor.fromColor(primaryColor).withLightness(0.2).toColor(),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        S.of(context).filters,
                        style: TextStyleTheme.headline3.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close, color: Colors.white),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  SwitchListTile(
                    title: Text(
                      S.of(context).showHiddenWorks,
                      style: TextStyleTheme.bodyText1.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    value: _showHidden,
                    onChanged: (value) {
                      setState(() {
                        _showHidden = value;
                      });
                    },
                    activeColor: secondaryColor,
                    contentPadding: EdgeInsets.zero,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    S.of(context).filterBySource,
                    style: TextStyleTheme.bodyText1.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: HSLColor.fromColor(primaryColor)
                          .withLightness(0.15)
                          .toColor(),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey.shade800),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<WorkSource?>(
                        value: _filterSource,
                        isExpanded: true,
                        dropdownColor: HSLColor.fromColor(primaryColor)
                            .withLightness(0.2)
                            .toColor(),
                        style: TextStyleTheme.bodyText1
                            .copyWith(color: Colors.white),
                        icon: const Icon(Icons.arrow_drop_down,
                            color: Colors.white),
                        hint: Text(
                          S.of(context).allSources,
                          style: TextStyleTheme.bodyText1
                              .copyWith(color: Colors.grey.shade400),
                        ),
                        onChanged: (WorkSource? newValue) {
                          setState(() {
                            _filterSource = newValue;
                          });
                        },
                        items: [
                          DropdownMenuItem<WorkSource?>(
                            value: null,
                            child: Text(
                              S.of(context).allSources,
                              style: TextStyleTheme.bodyText1
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                          ...WorkSource.values
                              .map<DropdownMenuItem<WorkSource>>(
                                  (WorkSource value) {
                            return DropdownMenuItem<WorkSource>(
                              value: value,
                              child: Text(
                                value == WorkSource.app ? 'APP' : 'EXTERNAL',
                                style: TextStyleTheme.bodyText1
                                    .copyWith(color: Colors.white),
                              ),
                            );
                          }),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: _resetFilters,
                        child: Text(
                          S.of(context).reset,
                          style: TextStyleTheme.button.copyWith(
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _applyFilters,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: secondaryColor,
                        ),
                        child: Text(
                          S.of(context).apply,
                          style: TextStyleTheme.button,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: _isSelectMode
            ? Text(
                '${_selectedWorks.length} ${S.of(context).selected}',
                style: TextStyleTheme.headline3,
              )
            : Text(S.of(context).works, style: TextStyleTheme.headline3),
        backgroundColor: primaryColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: _isSelectMode
            ? [
                IconButton(
                  icon: const Icon(Icons.visibility, color: Colors.white),
                  onPressed: _selectedWorks.isNotEmpty
                      ? _toggleVisibilityForSelected
                      : null,
                  tooltip: S.of(context).toggleVisibility,
                ),
                IconButton(
                  icon: const Icon(Icons.star, color: Colors.white),
                  onPressed: _selectedWorks.isNotEmpty
                      ? _toggleFeaturedForSelected
                      : null,
                  tooltip: S.of(context).toggleFeatured,
                ),
                IconButton(
                  icon: const Icon(Icons.delete, color: Colors.white),
                  onPressed: _selectedWorks.isNotEmpty ? _deleteSelected : null,
                  tooltip: S.of(context).delete,
                ),
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.white),
                  onPressed: _toggleSelectMode,
                  tooltip: S.of(context).cancel,
                ),
              ]
            : [
                IconButton(
                  icon: const Icon(Icons.filter_list, color: Colors.white),
                  onPressed: _showFilterModal,
                  tooltip: S.of(context).filter,
                ),
                IconButton(
                  icon: const Icon(Icons.select_all, color: Colors.white),
                  onPressed: _toggleSelectMode,
                  tooltip: S.of(context).selectMultiple,
                ),
                IconButton(
                  icon: const Icon(Icons.add, color: Colors.white),
                  onPressed: () =>
                      Navigator.pushNamed(context, '/works/add').then((result) {
                    _loadWorks();
                  }),
                  tooltip: S.of(context).addWork,
                ),
              ],
      ),
      body: BlocConsumer<ArtistWorkBloc, ArtistWorkState>(
        listener: (context, state) {
          state.maybeWhen(
            loaded: (works) {
              // Precargar imágenes cuando se cargan los works
              _preloadWorkImages(works);
            },
            filteredByTag: (filteredWorks, tagId) {
              // Precargar imágenes cuando se filtran por tag
              _preloadWorkImages(filteredWorks);
              
              // Obtener el nombre del tag para mostrar en el filtro
              if (filteredWorks.isNotEmpty && filteredWorks.first.tags != null) {
                final tag = filteredWorks.first.tags!.firstWhere(
                  (t) => t.id == tagId,
                  orElse: () => const Tag(id: '', name: '', count: 0),
                );

                setState(() {
                  _filterTagId = tagId;
                  _filterTag = tag.id != 0 ? tag.name : null;
                });
              } else {
                setState(() {
                  _filterTagId = tagId;
                });
              }
            },
            workDeleted: () => _loadWorks(),
            workUpdated: (_) => _loadWorks(),
            workCreated: (_) => _loadWorks(),
            orElse: () {},
          );
        },
        builder: (context, state) {
          // Cargar trabajos automáticamente al entrar a la galería
          // si aún no están cargados
          return state.maybeWhen(
            initial: () {
              // Load works if in initial state
              _loadWorks();
              return const Center(child: InkerProgressIndicator());
            },
            loading: () => const Center(child: InkerProgressIndicator()),
            loaded: (works) => _buildWorksGrid(works),
            filteredByTag: (filteredWorks, tagId) =>
                _buildWorksGrid(filteredWorks),
            error: (message) => Center(
              child: Text(
                '${S.of(context).error}: $message',
                style: TextStyleTheme.subtitle1.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            orElse: () => _buildEmptyLoadingState(),
          );
        },
      ),
    );
  }

  Widget _buildEmptyLoadingState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const InkerProgressIndicator(radius: 16),
          const SizedBox(height: 16),
          Text(
            'Loading works...',
            style: TextStyleTheme.subtitle1.copyWith(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildWorksGrid(List<Work> works) {
    // Apply source filter if set
    if (_filterSource != null) {
      works = works.where((work) => work.source == _filterSource).toList();
    }

    if (works.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.image_not_supported,
              size: 64,
              color: Colors.grey.shade600,
            ),
            const SizedBox(height: 16),
            Text(
              S.of(context).noWorksFound,
              style: TextStyleTheme.headline3.copyWith(
                color: Colors.grey.shade400,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              _filterTagId != null || _filterSource != null
                  ? S.of(context).tryRemovingFilters
                  : S.of(context).addSomeWorksToYourGallery,
              style: TextStyleTheme.subtitle1.copyWith(
                color: Colors.grey.shade600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            if (_filterTagId != null || _filterSource != null)
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _filterTagId = null;
                    _filterTag = null;
                    _filterSource = null;
                  });
                  _loadWorks();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: secondaryColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                child: Text(
                  S.of(context).clearFilters,
                  style: TextStyleTheme.button.copyWith(
                    color: Colors.white,
                  ),
                ),
              )
            else
              ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, '/works/add').then((result) {
                  // Only reload if a work was created (result == true)
                  if (result == true) {
                    _loadWorks();
                  }
                }),
                style: ElevatedButton.styleFrom(
                  backgroundColor: secondaryColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                child: Text(
                  S.of(context).addWork,
                  style: TextStyleTheme.button.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
          ],
        ),
      );
    }

    return Column(
      children: [
        if (_filterTagId != null || _filterSource != null)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: HSLColor.fromColor(primaryColor)
                          .withLightness(0.15)
                          .toColor(),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey.shade800),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (_filterTagId != null)
                          Text(
                            S.of(context).filteringByTag(_filterTag ?? ''),
                            style: TextStyleTheme.bodyText2.copyWith(
                              color: Colors.white,
                            ),
                          )
                        else if (_filterSource != null)
                          Text(
                            S.of(context).filteringBySource(
                                _filterSource == WorkSource.app
                                    ? 'APP'
                                    : 'EXTERNAL'),
                            style: TextStyleTheme.bodyText2.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _filterTagId = null;
                              _filterTag = null;
                              _filterSource = null;
                            });
                            _loadWorks();
                          },
                          child: Icon(
                            Icons.close,
                            color: Colors.grey.shade400,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemCount: works.length,
            itemBuilder: (context, index) {
              final work = works[index];
              return _buildWorkCard(work);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildWorkCard(Work work) {
    final bool isSelected = _selectedWorks.contains(work);

    return GestureDetector(
      onTap: _isSelectMode
          ? () => _toggleWorkSelection(work)
          : () => Navigator.pushNamed(
                context,
                '/works/detail',
                arguments: work,
              ).then((_) => _loadWorks()),
      onLongPress: _isSelectMode ? null : () => _toggleSelectMode(),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: HSLColor.fromColor(primaryColor)
                  .withLightness(0.15)
                  .toColor(),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isSelected ? secondaryColor : Colors.grey.shade800,
                width: isSelected ? 2 : 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        child: _imageCache.buildHeroCachedImage(
                          imageUrl: work.thumbnailUrl ?? work.imageUrl,
                          heroTag: 'work_image_${work.id}',
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                        ),
                      ),
                      if (work.isHidden)
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.visibility_off,
                              color: Colors.white.withOpacity(0.7),
                              size: 40,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              work.title,
                              style: TextStyleTheme.subtitle1.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.grey.shade500,
                                  size: 14,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  '${work.viewCount}',
                                  style: TextStyleTheme.caption.copyWith(
                                    color: Colors.grey.shade500,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.grey.shade500,
                                  size: 14,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  '${work.likeCount}',
                                  style: TextStyleTheme.caption.copyWith(
                                    color: Colors.grey.shade500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      if (work.isFeatured)
                        const Icon(
                          Icons.star,
                          color: secondaryColor,
                          size: 20,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (_isSelectMode)
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                decoration: BoxDecoration(
                  color: isSelected
                      ? secondaryColor
                      : Colors.grey.withOpacity(0.8),
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(
                    isSelected ? Icons.check : Icons.circle_outlined,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
            ),
          if (work.source == WorkSource.external && !_isSelectMode)
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'EXTERNAL',
                  style: TextStyleTheme.caption.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
