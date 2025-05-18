import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/tattoo_styles.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/user_tattoo_design_dto.dart';
import 'package:inker_studio/domain/blocs/tattoo_generator/tattoo_generator_bloc.dart';
import 'package:inker_studio/domain/services/tattoo_generator/tatto_generator_service.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/shared/widgets/buttons.dart';
import 'package:inker_studio/ui/shared/widgets/loading_indicator.dart';
import 'package:inker_studio/ui/tattoo_generator/tattoo_immersive_viewer_page.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class TattooGeneratorPage extends StatefulWidget {
  const TattooGeneratorPage({super.key, this.selectForQuotation = false});

  final bool selectForQuotation;

  @override
  State<TattooGeneratorPage> createState() => _TattooGeneratorPageState();
}

class _TattooGeneratorPageState extends State<TattooGeneratorPage>
    with SingleTickerProviderStateMixin {
  final TextEditingController _promptController = TextEditingController();
  late TattooStyle _selectedStyle = TattooStyle.blackwork;

  // Tab controller
  late TabController _tabController;

  // Current indices for UI state
  int _currentResultImageIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabChange);

    context
        .read<TattooGeneratorBloc>()
        .add(const TattooGeneratorEvent.started());
  }

  void _handleTabChange() {
    if (_tabController.indexIsChanging) {
      return;
    }

    // Only load data if the tab is being viewed for the first time
    // The bloc will handle caching
    switch (_tabController.index) {
      case 0: // Generate tab
        // No specific data loading needed
        break;
      case 1: // History tab
        context
            .read<TattooGeneratorBloc>()
            .add(const TattooGeneratorEvent.loadHistory());
        break;
      case 2: // Favorites tab
        context
            .read<TattooGeneratorBloc>()
            .add(const TattooGeneratorEvent.loadFavorites());
        break;
    }
  }

  @override
  void dispose() {
    _promptController.dispose();
    _tabController.removeListener(_handleTabChange);
    _tabController.dispose();
    super.dispose();
  }

  // Get appropriate emoji for each style
  String _getStyleEmoji(TattooStyle style) {
    switch (style) {
      case TattooStyle.traditionalAmerican:
        return '🦅';
      case TattooStyle.neotraditional:
        return '🌺';
      case TattooStyle.realism:
        return '📷';
      case TattooStyle.watercolor:
        return '🎨';
      case TattooStyle.geometric:
        return '◻️';
      case TattooStyle.blackwork:
        return '⚫';
      case TattooStyle.dotwork:
        return '👾';
      case TattooStyle.japanese:
        return '🌊';
      case TattooStyle.tribal:
        return '🏝️';
      case TattooStyle.newSchool:
        return '🎭';
      case TattooStyle.biomechanical:
        return '🤖';
      case TattooStyle.minimalist:
        return '➖';
      case TattooStyle.surrealism:
        return '🌌';
      case TattooStyle.ornamental:
        return '🧿';
      case TattooStyle.neoJapanese:
        return '🐉';
      case TattooStyle.celtic:
        return '☘️';
      case TattooStyle.chicano:
        return '🌹';
      case TattooStyle.abstract:
        return '🔄';
      case TattooStyle.mandala:
        return '🧘‍♀️';
      case TattooStyle.fineline:
        return '✒️';
      case TattooStyle.ignorantStyle:
        return '🖍️';
      default:
        return '🎯';
    }
  }

  String _localizedTattooStyle(TattooStyle style, BuildContext context) {
    switch (style) {
      case TattooStyle.traditionalAmerican:
        return S.of(context).tattooStyleTraditionalAmerican;
      case TattooStyle.neotraditional:
        return S.of(context).tattooStyleNeotraditional;
      case TattooStyle.realism:
        return S.of(context).tattooStyleRealism;
      case TattooStyle.watercolor:
        return S.of(context).tattooStyleWatercolor;
      case TattooStyle.geometric:
        return S.of(context).tattooStyleGeometric;
      case TattooStyle.blackwork:
        return S.of(context).tattooStyleBlackwork;
      case TattooStyle.dotwork:
        return S.of(context).tattooStyleDotwork;
      case TattooStyle.japanese:
        return S.of(context).tattooStyleJapanese;
      case TattooStyle.tribal:
        return S.of(context).tattooStyleTribal;
      case TattooStyle.newSchool:
        return S.of(context).tattooStyleNewSchool;
      case TattooStyle.biomechanical:
        return S.of(context).tattooStyleBiomechanical;
      case TattooStyle.minimalist:
        return S.of(context).tattooStyleMinimalist;
      case TattooStyle.surrealism:
        return S.of(context).tattooStyleSurrealism;
      case TattooStyle.ornamental:
        return S.of(context).tattooStyleOrnamental;
      case TattooStyle.neoJapanese:
        return S.of(context).tattooStyleNeoJapanese;
      case TattooStyle.celtic:
        return S.of(context).tattooStyleCeltic;
      case TattooStyle.chicano:
        return S.of(context).tattooStyleChicano;
      case TattooStyle.abstract:
        return S.of(context).tattooStyleAbstract;
      case TattooStyle.mandala:
        return S.of(context).tattooStyleMandala;
      case TattooStyle.fineline:
        return S.of(context).tattooStyleFineline;
      case TattooStyle.ignorantStyle:
        return S.of(context).tattooStyleIgnorantStyle;
    }
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Row(
          children: [
            const Icon(Icons.brush, color: Colors.white),
            const SizedBox(width: 8),
            Text(s.tattooGenerator, style: TextStyleTheme.headline2),
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Theme.of(context).colorScheme.error,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white.withOpacity(0.7),
          tabs: [
            Tab(text: s.generate),
            Tab(text: s.history),
            Tab(text: s.favorites),
          ],
        ),
      ),
      resizeToAvoidBottomInset: true,
      body: BlocConsumer<TattooGeneratorBloc, TattooGeneratorState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message)),
              );
            },
            favoriteToggled: (designId, isFavorite) {
              // Optionally show a confirmation snackbar
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(isFavorite
                      ? s.designAddedToFavorites
                      : s.designRemovedFromFavorites),
                  duration: const Duration(seconds: 1),
                ),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return TabBarView(
            controller: _tabController,
            children: [
              // Generate tab
              _buildGenerateTab(s, state),

              // History tab
              _buildHistoryTab(s, state),

              // Favorites tab
              _buildFavoritesTab(s, state),
            ],
          );
        },
      ),
    );
  }

  Widget _buildGenerateTab(S s, TattooGeneratorState state) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildPromptInput(s),
                  const SizedBox(height: 20),
                  _buildStyleSelector(s),
                  const SizedBox(height: 20),
                  _buildGenerateButton(s),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 300, // Altura fija para evitar overflow
                    child: state.maybeWhen(
                      loading: () => const Center(child: LoadingIndicator()),
                      loaded: (images, prompt, style, designId) =>
                          _buildResultsView(s, images, prompt, style, designId),
                      orElse: () => _buildEmptyState(s),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildHistoryTab(S s, TattooGeneratorState state) {
    return state.maybeWhen(
      historyLoading: () => const Center(child: LoadingIndicator()),
      historyLoaded: (designs, favoritesOnly) => _buildDesignsGridView(
        s: s,
        designs: designs,
        emptyMessage: s.noDesignsOnHistory,
        onRefresh: () {
          context
              .read<TattooGeneratorBloc>()
              .add(const TattooGeneratorEvent.refreshHistory());
          return Future.delayed(const Duration(milliseconds: 1500));
        },
      ),
      orElse: () {
        // Load history when first visiting this tab
        if (_tabController.index == 1) {
          context
              .read<TattooGeneratorBloc>()
              .add(const TattooGeneratorEvent.loadHistory());
        }
        return const Center(child: LoadingIndicator());
      },
    );
  }

  Widget _buildFavoritesTab(S s, TattooGeneratorState state) {
    return state.maybeWhen(
      historyLoading: () => const Center(child: LoadingIndicator()),
      historyLoaded: (designs, favoritesOnly) {
        if (!favoritesOnly) {
          // If we're showing all designs but the favorites tab is selected,
          // trigger loading favorites
          if (_tabController.index == 2) {
            context
                .read<TattooGeneratorBloc>()
                .add(const TattooGeneratorEvent.loadFavorites());
            return const Center(child: LoadingIndicator());
          }
        }

        return _buildDesignsGridView(
          designs: designs,
          emptyMessage: s.noDesignsOnFavorites,
          onRefresh: () {
            context
                .read<TattooGeneratorBloc>()
                .add(const TattooGeneratorEvent.refreshFavorites());
            return Future.delayed(const Duration(milliseconds: 1500));
          },
          s: s,
        );
      },
      orElse: () {
        // Load favorites when first visiting this tab
        if (_tabController.index == 2) {
          context
              .read<TattooGeneratorBloc>()
              .add(const TattooGeneratorEvent.loadFavorites());
        }
        return const Center(child: LoadingIndicator());
      },
    );
  }

  Widget _buildDesignsGridView({
    required List<UserTattooDesignDto> designs,
    required String emptyMessage,
    required Future<void> Function() onRefresh,
    required S s,
  }) {
    if (designs.isEmpty) {
      return RefreshIndicator(
        onRefresh: onRefresh,
        color: Theme.of(context).colorScheme.error,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.image_not_supported,
                        size: 64, color: Colors.white.withOpacity(0.5)),
                    const SizedBox(height: 16),
                    Text(
                      emptyMessage,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7), fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: onRefresh,
      color: Theme.of(context).colorScheme.error,
      backgroundColor: Theme.of(context).colorScheme.secondary,
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: designs.length,
        itemBuilder: (context, index) {
          final design = designs[index];

          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: _buildDesignCard(design, s),
          );
        },
      ),
    );
  }

  Widget _buildDesignCard(UserTattooDesignDto design, S s) {
    final pageController = PageController(viewportFraction: 1.0);
    final ValueNotifier<int> currentImageIndex = ValueNotifier<int>(0);

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image carousel with dots - maximized
          AspectRatio(
            aspectRatio: 1.0,
            child: Stack(
              children: [
                // Main image carousel
                PageView.builder(
                  itemCount: design.imageUrls.length,
                  pageSnapping: true,
                  controller: pageController,
                  onPageChanged: (index) {
                    currentImageIndex.value = index;
                  },
                  itemBuilder: (context, imageIndex) {
                    return GestureDetector(
                      onTap: () {
                        // Open immersive viewer with the current image selected
                        _openImmersiveViewer(design, imageIndex);
                      },
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(12)),
                        child: Hero(
                          tag: 'design_${design.id}_$imageIndex',
                          child: CachedNetworkImage(
                            imageUrl: design.imageUrls[imageIndex],
                            fit: BoxFit.cover,
                            placeholder: (context, url) => Center(
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    Theme.of(context).colorScheme.error),
                              ),
                            ),
                            errorWidget: (context, url, error) => Center(
                              child: Icon(Icons.error,
                                  color: Theme.of(context).colorScheme.error),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),

                // Style and date in a pill at the top
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          _getStyleEmoji(design.getTattooStyle()),
                          style: const TextStyle(fontSize: 12),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          _localizedTattooStyle(
                              design.getTattooStyle(), context),
                          style: TextStyleTheme.caption.copyWith(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Favorite button overlay
                Positioned(
                  top: 8,
                  right: 8,
                  child: GestureDetector(
                    onTap: () {
                      // Toggle favorite
                      context.read<TattooGeneratorBloc>().add(
                            TattooGeneratorEvent.toggleFavorite(
                              designId: design.id,
                              isFavorite: !(design.isFavorite ?? false),
                            ),
                          );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.7),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        design.isFavorite ?? false
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: design.isFavorite ?? false
                            ? Theme.of(context).colorScheme.secondary
                            : Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),

                // Prompt at the bottom with gradient overlay
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.8),
                          Colors.transparent,
                        ],
                      ),
                    ),
                    child: Text(
                      design.userQuery,
                      style: TextStyleTheme.bodyText2.copyWith(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 12,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),

                // Dots indicator
                if (design.imageUrls.length > 1)
                  Positioned(
                    bottom: 50, // Above the prompt overlay
                    left: 0,
                    right: 0,
                    child: ValueListenableBuilder<int>(
                        valueListenable: currentImageIndex,
                        builder: (context, index, _) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(design.imageUrls.length,
                                (dotIndex) {
                              return Container(
                                width: 6,
                                height: 6,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: dotIndex == index
                                      ? Colors.white
                                      : Colors.white.withOpacity(0.4),
                                ),
                              );
                            }),
                          );
                        }),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to open the immersive viewer
  void _openImmersiveViewer(UserTattooDesignDto design, int initialImageIndex) {
    // Get the current list of designs based on the active tab
    List<UserTattooDesignDto> designs = [];
    int currentDesignIndex = 0;
    final state = context.read<TattooGeneratorBloc>().state;
    state.maybeWhen(
      historyLoaded: (designList, favoritesOnly) {
        designs = List.from(designList);
        currentDesignIndex = designs.indexWhere((d) => d.id == design.id);
        if (currentDesignIndex < 0) currentDesignIndex = 0;
      },
      orElse: () {},
    );
    // Open immersive viewer
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => TattooImmersiveViewerPage(
          images: design.imageUrls,
          prompt: design.userQuery,
          style: design.getTattooStyle(),
          initialIndex: initialImageIndex,
          designId: design.id,
          isFavorite: design.isFavorite,
          allDesigns: designs.isNotEmpty ? designs : null,
          currentDesignIndex: currentDesignIndex,
          selectForQuotation: widget.selectForQuotation,
          onSelectDesign: widget.selectForQuotation
              ? (result) {
                  Navigator.of(context).pop(result);
                }
              : null,
        ),
      ),
    );
  }

  Widget _buildImageCarousel(UserTattooDesignDto design) {
    return PageView.builder(
      itemCount: design.imageUrls.length,
      pageSnapping: true,
      controller: PageController(viewportFraction: 1.0),
      itemBuilder: (context, imageIndex) {
        return GestureDetector(
          onTap: () {
            // Open immersive viewer with the current image selected
            _openImmersiveViewer(design, imageIndex);
          },
          child: Stack(
            fit: StackFit.expand,
            children: [
              CachedNetworkImage(
                imageUrl: design.imageUrls[imageIndex],
                fit: BoxFit.cover,
                placeholder: (context, url) => Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Theme.of(context).colorScheme.error),
                  ),
                ),
                errorWidget: (context, url, error) => Center(
                  child: Icon(Icons.error,
                      color: Theme.of(context).colorScheme.error),
                ),
              ),

              // Dots indicator
              if (design.imageUrls.length > 1)
                Positioned(
                  bottom: 8,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                        List.generate(design.imageUrls.length, (dotIndex) {
                      return Container(
                        width: 8,
                        height: 8,
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: dotIndex == imageIndex
                              ? Colors.white
                              : Colors.white.withOpacity(0.4),
                        ),
                      );
                    }),
                  ),
                ),

              // Swipe indicator for first image
              if (design.imageUrls.length > 1 && imageIndex == 0)
                Positioned(
                  top: 0,
                  bottom: 0,
                  right: 16,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.swipe,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildPromptInput(S s) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.description,
                color: Theme.of(context).colorScheme.secondary, size: 20),
            const SizedBox(width: 8),
            Text(
              s.describeYourTattoo,
              style: TextStyleTheme.headline3,
            ),
          ],
        ),
        const SizedBox(height: 8),
        TextField(
          controller: _promptController,
          maxLines: 3,
          style: TextStyleTheme.bodyText1,
          textInputAction: TextInputAction.done,
          onSubmitted: (_) => FocusScope.of(context).unfocus(),
          decoration: InputDecoration(
            fillColor: inputBackgroundColor,
            filled: true,
            hintText: s.tattooDescriptionHint,
            hintStyle: hintTextStyle,
            border: inputBorder,
            focusedBorder: focusedBorder,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 12, right: 4),
              child: Icon(Icons.edit,
                  color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          onChanged: (value) {
            context.read<TattooGeneratorBloc>().add(
                  TattooGeneratorEvent.updatePrompt(value),
                );
          },
        ),
      ],
    );
  }

  Widget _buildStyleSelector(S s) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.style,
                color: Theme.of(context).colorScheme.secondary, size: 20),
            const SizedBox(width: 8),
            Text(
              s.chooseStyle,
              style: TextStyleTheme.headline3,
            ),
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 100, // Fixed height to avoid overflow
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: TattooStyle.values.map((style) {
              final isSelected = style == _selectedStyle;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedStyle = style;
                  });
                  context.read<TattooGeneratorBloc>().add(
                        TattooGeneratorEvent.updateStyle(style),
                      );
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 12),
                  padding: const EdgeInsets.all(8), // Reduced padding
                  width: 90, // Reduced width
                  decoration: BoxDecoration(
                    color: isSelected
                        ? Theme.of(context).colorScheme.secondary
                        : explorerSecondaryColor,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: isSelected
                        ? [
                            BoxShadow(
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondary
                                  .withOpacity(0.5),
                              blurRadius: 8,
                              spreadRadius: 1,
                            )
                          ]
                        : null,
                    border: isSelected
                        ? Border.all(color: Colors.white, width: 2)
                        : null,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // Use minimum space
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        _getStyleEmoji(style),
                        style: const TextStyle(fontSize: 24),
                      ),
                      const SizedBox(height: 6), // Reduced spacing
                      Text(
                        _localizedTattooStyle(style, context),
                        textAlign: TextAlign.center,
                        style: TextStyleTheme.subtitle1
                            .copyWith(fontSize: 11), // Smaller font
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildGenerateButton(S s) {
    return SizedBox(
      width: double.infinity,
      child: PrimaryButton(
        text: s.generateTattoo,
        onPressed: () {
          if (_promptController.text.trim().isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(s.pleaseEnterDescription)),
            );
            return;
          }

          context.read<TattooGeneratorBloc>().add(
                TattooGeneratorEvent.generateTattoo(
                  prompt: _promptController.text,
                  style: _selectedStyle,
                ),
              );
        },
      ),
    );
  }

  Widget _buildResultsView(S s, List<GeneratedTattooImage> images,
      String prompt, TattooStyle style, String? designId) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.photo_library,
                color: Theme.of(context).colorScheme.secondary, size: 20),
            const SizedBox(width: 8),
            Text(
              s.results,
              style: TextStyleTheme.headline3,
            ),
          ],
        ),
        const SizedBox(height: 12),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: explorerSecondaryColor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Stack(
              children: [
                // Full-size image carousel
                PageView.builder(
                  itemCount: images.length,
                  pageSnapping: true,
                  controller: PageController(viewportFraction: 1.0),
                  onPageChanged: (index) {
                    setState(() {
                      _currentResultImageIndex = index;
                    });
                  },
                  itemBuilder: (context, imageIndex) {
                    return GestureDetector(
                      onTap: () {
                        // Navigate to the immersive viewer
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => TattooImmersiveViewerPage(
                              images:
                                  images.map((img) => img.imageUrl).toList(),
                              prompt: prompt,
                              style: style,
                              initialIndex: imageIndex,
                              designId: designId,
                              isFavorite: false,
                              selectForQuotation: widget.selectForQuotation,
                              onSelectDesign: widget.selectForQuotation
                                  ? (result) {
                                      Navigator.of(context).pop(result);
                                    }
                                  : null,
                            ),
                          ),
                        );
                      },
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          // Full-screen image
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Hero(
                                tag:
                                    'generated_tattoo_${designId ?? ""}_$imageIndex',
                                child: CachedNetworkImage(
                                  imageUrl: images[imageIndex].imageUrl,
                                  fit: BoxFit.contain,
                                  placeholder: (context, url) => Container(
                                    color: explorerSecondaryColor,
                                    child: const Center(
                                      child: LoadingIndicator(),
                                    ),
                                  ),
                                  errorWidget: (context, url, error) =>
                                      Container(
                                    color: explorerSecondaryColor,
                                    child: const Center(
                                      child: Icon(Icons.error, color: redColor),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),

                // Tap to view overlay
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.7),
                          Colors.transparent,
                        ],
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.fullscreen,
                            color: Colors.white,
                            size: 16,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            s.viewDetails,
                            style: TextStyleTheme.caption.copyWith(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Dots indicator - centered at bottom
                if (images.length > 1)
                  Positioned(
                    bottom: 40,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(images.length, (dotIndex) {
                        return Container(
                          width: 8,
                          height: 8,
                          margin: const EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: dotIndex == _currentResultImageIndex
                                ? Colors.white
                                : Colors.white.withOpacity(0.4),
                          ),
                        );
                      }),
                    ),
                  ),

                // Swipe indicator - right center
                if (images.length > 1)
                  Positioned(
                    top: 0,
                    bottom: 0,
                    right: 16,
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.swipe,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildEmptyState(S s) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.brush,
                size: 64, color: Theme.of(context).colorScheme.secondary),
          ),
          const SizedBox(height: 24),
          Text(
            s.emptyTattooGeneratorMessage,
            textAlign: TextAlign.center,
            style: TextStyleTheme.subtitle1.copyWith(color: tertiaryColor),
          ),
          const SizedBox(height: 32),
          const Text(
            '✨ 🖌️ 🎨',
            style: TextStyle(fontSize: 32),
          ),
        ],
      ),
    );
  }

  String _formatStyleName(String styleName) {
    // Convert camelCase to Title Case with spaces
    final result = styleName.replaceAllMapped(
      RegExp(r'([a-z])([A-Z])'),
      (match) => '${match.group(1)} ${match.group(2)}',
    );

    return result.substring(0, 1).toUpperCase() + result.substring(1);
  }

  String _formatDate(DateTime date, S s) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays < 1) {
      if (difference.inHours < 1) {
        return s.minutesAgo(difference.inMinutes);
      }
      return s.hoursAgo(difference.inHours);
    } else if (difference.inDays < 7) {
      return s.daysAgo(difference.inDays);
    } else {
      // Format as date
      final day = date.day.toString().padLeft(2, '0');
      final month = date.month.toString().padLeft(2, '0');
      return '$day/$month/${date.year}';
    }
  }
}
