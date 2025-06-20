import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/tattoo_styles.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/user_tattoo_design_dto.dart';
import 'package:inker_studio/domain/blocs/tattoo_generator/tattoo_generator_bloc.dart';
import 'package:inker_studio/domain/services/tattoo_generator/tatto_generator_service.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/shared/widgets/loading_indicator.dart';
import 'package:inker_studio/ui/tattoo_generator/tattoo_immersive_viewer_page.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';

class TattooGeneratorPageWeb extends StatefulWidget {
  const TattooGeneratorPageWeb({super.key, this.selectForQuotation = false});

  final bool selectForQuotation;

  @override
  State<TattooGeneratorPageWeb> createState() => _TattooGeneratorPageWebState();
}

class _TattooGeneratorPageWebState extends State<TattooGeneratorPageWeb>
    with SingleTickerProviderStateMixin {
  final TextEditingController _promptController = TextEditingController();
  late TattooStyle _selectedStyle = TattooStyle.blackwork;
  late TabController _tabController;
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

    switch (_tabController.index) {
      case 0: // Generate tab
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
    final isTablet = Responsive.isTablet(context);
    final isDesktop = Responsive.isDesktop(context);

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
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: Container(
            alignment: Alignment.center,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: isDesktop ? 600 : double.infinity,
              ),
              child: TabBar(
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
          ),
        ),
      ),
      body: BlocConsumer<TattooGeneratorBloc, TattooGeneratorState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message)),
              );
            },
            favoriteToggled: (designId, isFavorite) {
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
          return Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: isDesktop ? 1200 : (isTablet ? 900 : double.infinity),
              ),
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildGenerateTab(s, state),
                  _buildHistoryTab(s, state),
                  _buildFavoritesTab(s, state),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildGenerateTab(S s, TattooGeneratorState state) {
    final isDesktop = Responsive.isDesktop(context);
    final isTablet = Responsive.isTablet(context);
    
    return SingleChildScrollView(
      padding: EdgeInsets.all(isDesktop ? 32 : (isTablet ? 24 : 16)),
      child: Column(
        children: [
          // Main content in a card-like container
          Container(
            decoration: BoxDecoration(
              color: explorerSecondaryColor,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            padding: EdgeInsets.all(isDesktop ? 32 : 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left side - Input and controls
                Expanded(
                  flex: isDesktop ? 5 : 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildPromptInputWeb(s),
                      const SizedBox(height: 32),
                      _buildStyleSelectorWeb(s),
                      const SizedBox(height: 32),
                      _buildGenerateButtonWeb(s),
                    ],
                  ),
                ),
                if (isDesktop) ...[
                  const SizedBox(width: 48),
                  // Right side - Preview
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: 500,
                      decoration: BoxDecoration(
                        color: primaryColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
                          width: 1,
                        ),
                      ),
                      child: state.maybeWhen(
                        loading: () => const Center(child: LoadingIndicator()),
                        loaded: (images, prompt, style, designId) =>
                            _buildResultsViewWeb(s, images, prompt, style, designId),
                        orElse: () => _buildEmptyStateWeb(s),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
          
          // Results for mobile/tablet
          if (!isDesktop)
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  color: explorerSecondaryColor,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: state.maybeWhen(
                  loading: () => const Center(child: LoadingIndicator()),
                  loaded: (images, prompt, style, designId) =>
                      _buildResultsViewWeb(s, images, prompt, style, designId),
                  orElse: () => _buildEmptyStateWeb(s),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildPromptInputWeb(S s) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.description,
                  color: Theme.of(context).colorScheme.secondary, size: 24),
            ),
            const SizedBox(width: 12),
            Text(
              s.describeYourTattoo,
              style: TextStyleTheme.headline2.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _promptController,
          maxLines: 4,
          style: TextStyleTheme.bodyText1.copyWith(fontSize: 16),
          textInputAction: TextInputAction.done,
          onSubmitted: (_) => FocusScope.of(context).unfocus(),
          decoration: InputDecoration(
            fillColor: inputBackgroundColor,
            filled: true,
            hintText: s.tattooDescriptionHint,
            hintStyle: hintTextStyle.copyWith(fontSize: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.secondary,
                width: 2,
              ),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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

  Widget _buildStyleSelectorWeb(S s) {
    final isDesktop = Responsive.isDesktop(context);
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.style,
                  color: Theme.of(context).colorScheme.secondary, size: 24),
            ),
            const SizedBox(width: 12),
            Text(
              s.chooseStyle,
              style: TextStyleTheme.headline2.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        // Grid layout for styles
        Container(
          constraints: BoxConstraints(
            maxHeight: isDesktop ? 300 : 400,
          ),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const AlwaysScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: isDesktop ? 4 : 3,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.2,
            ),
            itemCount: TattooStyle.values.length,
            itemBuilder: (context, index) {
              final style = TattooStyle.values[index];
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
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? Theme.of(context).colorScheme.secondary
                        : primaryColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: isSelected
                        ? [
                            BoxShadow(
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondary
                                  .withOpacity(0.4),
                              blurRadius: 8,
                              spreadRadius: 1,
                            )
                          ]
                        : null,
                    border: Border.all(
                      color: isSelected
                          ? Colors.white
                          : Theme.of(context).colorScheme.secondary.withOpacity(0.3),
                      width: isSelected ? 2 : 1,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        _getStyleEmoji(style),
                        style: const TextStyle(fontSize: 28),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          _localizedTattooStyle(style, context),
                          textAlign: TextAlign.center,
                          style: TextStyleTheme.bodyText2.copyWith(
                            fontSize: 12,
                            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                            color: Colors.white,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildGenerateButtonWeb(S s) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton.icon(
        icon: const Icon(Icons.auto_awesome, size: 24),
        label: Text(
          s.generateTattoo,
          style: TextStyleTheme.button.copyWith(fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 2,
        ),
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

  Widget _buildResultsViewWeb(S s, List<GeneratedTattooImage> images,
      String prompt, TattooStyle style, String? designId) {
    return Stack(
      children: [
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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => TattooImmersiveViewerPage(
                      images: images.map((img) => img.imageUrl).toList(),
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Hero(
                      tag: 'generated_tattoo_${designId ?? ""}_$imageIndex',
                      child: CachedNetworkImage(
                        imageUrl: images[imageIndex].imageUrl,
                        fit: BoxFit.contain,
                        placeholder: (context, url) => Container(
                          color: primaryColor.withOpacity(0.5),
                          child: const Center(
                            child: LoadingIndicator(),
                          ),
                        ),
                        errorWidget: (context, url, error) => Container(
                          color: primaryColor.withOpacity(0.5),
                          child: const Center(
                            child: Icon(Icons.error, color: redColor, size: 48),
                          ),
                        ),
                      ),
                    ),
                    // Overlay with view details
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
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
                        child: Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.fullscreen,
                                color: Colors.white,
                                size: 20,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                s.viewDetails,
                                style: TextStyleTheme.bodyText1.copyWith(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        // Dots indicator
        if (images.length > 1)
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(images.length, (dotIndex) {
                return Container(
                  width: 10,
                  height: 10,
                  margin: const EdgeInsets.symmetric(horizontal: 3),
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
      ],
    );
  }

  Widget _buildEmptyStateWeb(S s) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.brush,
                size: 72, color: Theme.of(context).colorScheme.secondary),
          ),
          const SizedBox(height: 32),
          Text(
            s.emptyTattooGeneratorMessage,
            textAlign: TextAlign.center,
            style: TextStyleTheme.headline3.copyWith(
              color: Colors.white.withOpacity(0.9),
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            '✨ 🖌️ 🎨',
            style: TextStyle(fontSize: 36),
          ),
        ],
      ),
    );
  }

  Widget _buildHistoryTab(S s, TattooGeneratorState state) {
    return state.maybeWhen(
      historyLoading: () => const Center(child: LoadingIndicator()),
      historyLoaded: (designs, favoritesOnly) => _buildDesignsGridViewWeb(
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
        if (!favoritesOnly && _tabController.index == 2) {
          context
              .read<TattooGeneratorBloc>()
              .add(const TattooGeneratorEvent.loadFavorites());
          return const Center(child: LoadingIndicator());
        }

        return _buildDesignsGridViewWeb(
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
        if (_tabController.index == 2) {
          context
              .read<TattooGeneratorBloc>()
              .add(const TattooGeneratorEvent.loadFavorites());
        }
        return const Center(child: LoadingIndicator());
      },
    );
  }

  Widget _buildDesignsGridViewWeb({
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
              height: MediaQuery.of(context).size.height * 0.6,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.image_not_supported,
                        size: 72, color: Colors.white.withOpacity(0.5)),
                    const SizedBox(height: 24),
                    Text(
                      emptyMessage,
                      style: TextStyleTheme.headline3.copyWith(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    final isDesktop = Responsive.isDesktop(context);
    final isTablet = Responsive.isTablet(context);
    final crossAxisCount = isDesktop ? 3 : (isTablet ? 2 : 1);

    return RefreshIndicator(
      onRefresh: onRefresh,
      color: Theme.of(context).colorScheme.error,
      backgroundColor: Theme.of(context).colorScheme.secondary,
      child: Padding(
        padding: EdgeInsets.all(isDesktop ? 32 : (isTablet ? 24 : 16)),
        child: GridView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: isDesktop ? 24 : 16,
            mainAxisSpacing: isDesktop ? 24 : 16,
            childAspectRatio: 0.85,
          ),
          itemCount: designs.length,
          itemBuilder: (context, index) {
            final design = designs[index];
            return _buildDesignCardWeb(design, s);
          },
        ),
      ),
    );
  }

  Widget _buildDesignCardWeb(UserTattooDesignDto design, S s) {
    final pageController = PageController(viewportFraction: 1.0);
    final ValueNotifier<int> currentImageIndex = ValueNotifier<int>(0);

    return Container(
      decoration: BoxDecoration(
        color: explorerSecondaryColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image carousel
          Expanded(
            child: Stack(
              children: [
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
                        _openImmersiveViewer(design, imageIndex);
                      },
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(16)),
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
                // Style badge
                Positioned(
                  top: 12,
                  left: 12,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          _getStyleEmoji(design.getTattooStyle()),
                          style: const TextStyle(fontSize: 14),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          _localizedTattooStyle(
                              design.getTattooStyle(), context),
                          style: TextStyleTheme.caption.copyWith(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Favorite button
                Positioned(
                  top: 12,
                  right: 12,
                  child: GestureDetector(
                    onTap: () {
                      context.read<TattooGeneratorBloc>().add(
                            TattooGeneratorEvent.toggleFavorite(
                              designId: design.id,
                              isFavorite: !(design.isFavorite ?? false),
                            ),
                          );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.8),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        design.isFavorite ?? false
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: design.isFavorite ?? false
                            ? Theme.of(context).colorScheme.error
                            : Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                ),
                // Dots indicator
                if (design.imageUrls.length > 1)
                  Positioned(
                    bottom: 12,
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
                                width: 8,
                                height: 8,
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
          // Prompt info
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  design.userQuery,
                  style: TextStyleTheme.bodyText1.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Text(
                  _formatDate(design.createdAt ?? DateTime.now(), s),
                  style: TextStyleTheme.caption.copyWith(
                    color: Colors.white.withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _openImmersiveViewer(UserTattooDesignDto design, int initialImageIndex) {
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
      final day = date.day.toString().padLeft(2, '0');
      final month = date.month.toString().padLeft(2, '0');
      return '$day/$month/${date.year}';
    }
  }
}