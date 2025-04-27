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
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class TattooGeneratorPage extends StatefulWidget {
  const TattooGeneratorPage({super.key});

  @override
  State<TattooGeneratorPage> createState() => _TattooGeneratorPageState();
}

class _TattooGeneratorPageState extends State<TattooGeneratorPage> with SingleTickerProviderStateMixin {
  final TextEditingController _promptController = TextEditingController();
  late TattooStyle _selectedStyle = TattooStyle.blackwork;
  
  // Tab controller
  late TabController _tabController;
  
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabChange);
    
    context.read<TattooGeneratorBloc>().add(const TattooGeneratorEvent.started());
  }
  
  void _handleTabChange() {
    if (_tabController.indexIsChanging) {
      return;
    }
    
    // Load appropriate data based on selected tab
    switch (_tabController.index) {
      case 0: // Generate tab
        // No specific data loading needed
        break;
      case 1: // History tab
        context.read<TattooGeneratorBloc>().add(const TattooGeneratorEvent.loadHistory());
        break;
      case 2: // Favorites tab
        context.read<TattooGeneratorBloc>().add(const TattooGeneratorEvent.loadFavorites());
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

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Row(
          children: [
            const Icon(Icons.brush, color: Colors.white),
            const SizedBox(width: 8),
            Text(s.tattooGenerator, style: TextStyleTheme.headline2),
          ],
        ),
        backgroundColor: primaryColor,
        elevation: 0,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: redColor,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white.withOpacity(0.7),
          tabs: [
            Tab(text: 'Generar'),
            Tab(text: 'Historial'),
            Tab(text: 'Favoritos'),
          ],
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
              // Optionally show a confirmation snackbar
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(isFavorite 
                    ? 'Diseño agregado a favoritos' 
                    : 'Diseño removido de favoritos'),
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
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPromptInput(s),
          const SizedBox(height: 20),
          _buildStyleSelector(s),
          const SizedBox(height: 20),
          _buildGenerateButton(s),
          const SizedBox(height: 20),
          Expanded(
            child: state.maybeWhen(
              loading: () => const Center(child: LoadingIndicator()),
              loaded: (images, prompt, style) => _buildResultsView(s, images, prompt, style),
              orElse: () => _buildEmptyState(s),
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildHistoryTab(S s, TattooGeneratorState state) {
    return state.maybeWhen(
      historyLoading: () => const Center(child: LoadingIndicator()),
      historyLoaded: (designs, favoritesOnly) => _buildDesignsGridView(
        designs: designs,
        emptyMessage: 'No hay diseños en tu historial',
      ),
      orElse: () {
        // Load history when first visiting this tab
        if (_tabController.index == 1) {
          context.read<TattooGeneratorBloc>().add(const TattooGeneratorEvent.loadHistory());
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
            context.read<TattooGeneratorBloc>().add(const TattooGeneratorEvent.loadFavorites());
            return const Center(child: LoadingIndicator());
          }
        }
        
        return _buildDesignsGridView(
          designs: designs,
          emptyMessage: 'No hay diseños en tus favoritos',
        );
      },
      orElse: () {
        // Load favorites when first visiting this tab
        if (_tabController.index == 2) {
          context.read<TattooGeneratorBloc>().add(const TattooGeneratorEvent.loadFavorites());
        }
        return const Center(child: LoadingIndicator());
      },
    );
  }
  
  Widget _buildDesignsGridView({
    required List<UserTattooDesignDto> designs,
    required String emptyMessage,
  }) {
    if (designs.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.image_not_supported, size: 64, color: Colors.white.withOpacity(0.5)),
            const SizedBox(height: 16),
            Text(
              emptyMessage,
              style: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 16),
            ),
          ],
        ),
      );
    }
    
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.75, // Taller items to show info
        ),
        itemCount: designs.length,
        itemBuilder: (context, index) {
          final design = designs[index];
          final thumbnailUrl = design.imageUrls.isNotEmpty ? design.imageUrls[0] : '';
          
          return GestureDetector(
            onTap: () {
              // Open immersive viewer
              Navigator.of(context).push(
                TattooImmersiveViewerPage.route(
                  images: design.imageUrls,
                  prompt: design.userQuery,
                  style: design.getTattooStyle(),
                  designId: design.id,
                  isFavorite: design.isFavorite,
                ),
              );
            },
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image thumbnail
                  Expanded(
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                          child: CachedNetworkImage(
                            imageUrl: thumbnailUrl,
                            fit: BoxFit.cover,
                            placeholder: (context, url) => Center(
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(redColor),
                              ),
                            ),
                            errorWidget: (context, url, error) => const Center(
                              child: Icon(Icons.error, color: redColor),
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
                                color: Colors.black.withOpacity(0.6),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                design.isFavorite ?? false
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: design.isFavorite ?? false ? redColor : Colors.white,
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // Info section
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Style pill
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: primaryColor.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            _formatStyleName(design.getTattooStyle().name),
                            style: TextStyleTheme.caption.copyWith(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        
                        // Prompt text
                        Text(
                          design.userQuery,
                          style: TextStyleTheme.bodyText2.copyWith(
                            color: Colors.white.withOpacity(0.9),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        
                        if (design.createdAt != null) ...[
                          const SizedBox(height: 4),
                          Text(
                            _formatDate(design.createdAt!),
                            style: TextStyleTheme.caption.copyWith(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildPromptInput(S s) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.description, color: secondaryColor, size: 20),
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
          decoration: InputDecoration(
            fillColor: inputBackgroundColor,
            filled: true,
            hintText: s.tattooDescriptionHint,
            hintStyle: hintTextStyle,
            border: inputBorder,
            focusedBorder: focusedBorder,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            prefixIcon: const Padding(
              padding: EdgeInsets.only(left: 12, right: 4),
              child: Icon(Icons.edit, color: secondaryColor),
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
            const Icon(Icons.style, color: secondaryColor, size: 20),
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
                    color: isSelected ? secondaryColor : explorerSecondaryColor,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: isSelected ? [
                      BoxShadow(
                        color: secondaryColor.withOpacity(0.5),
                        blurRadius: 8,
                        spreadRadius: 1,
                      )
                    ] : null,
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
                        _formatStyleName(style.name),
                        textAlign: TextAlign.center,
                        style: TextStyleTheme.subtitle1.copyWith(fontSize: 11), // Smaller font
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

  Widget _buildResultsView(S s, List<TattooGeneratedImageURL> images, String prompt, TattooStyle style) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.photo_library, color: secondaryColor, size: 20),
            const SizedBox(width: 8),
            Text(
              s.results,
              style: TextStyleTheme.headline3,
            ),
          ],
        ),
        const SizedBox(height: 12),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: images.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // Navigate to the immersive viewer
                  Navigator.of(context).push(
                    TattooImmersiveViewerPage.route(
                      images: images,
                      prompt: prompt,
                      style: style,
                      initialIndex: index,
                    ),
                  );
                },
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Hero(
                        tag: 'generated_tattoo_$index',
                        child: CachedNetworkImage(
                          imageUrl: images[index],
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                          placeholder: (context, url) => Container(
                            color: explorerSecondaryColor,
                            child: const Center(
                              child: LoadingIndicator(),
                            ),
                          ),
                          errorWidget: (context, url, error) => Container(
                            color: explorerSecondaryColor,
                            child: const Center(
                              child: Icon(Icons.error, color: redColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(0.8),
                              Colors.transparent,
                            ],
                          ),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 16,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'Ver detalle',
                              style: TextStyleTheme.caption.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
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
              color: secondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.brush, size: 64, color: secondaryColor),
          ),
          const SizedBox(height: 24),
          Text(
            s.emptyTattooGeneratorMessage,
            textAlign: TextAlign.center,
            style: TextStyleTheme.subtitle1.copyWith(color: tertiaryColor),
          ),
          const SizedBox(height: 32),
          const Text(
            "✨ 🖌️ 🎨",
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
  
  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);
    
    if (difference.inDays < 1) {
      if (difference.inHours < 1) {
        return 'Hace ${difference.inMinutes} minutos';
      }
      return 'Hace ${difference.inHours} horas';
    } else if (difference.inDays < 7) {
      return 'Hace ${difference.inDays} días';
    } else {
      // Format as date
      final day = date.day.toString().padLeft(2, '0');
      final month = date.month.toString().padLeft(2, '0');
      return '$day/$month/${date.year}';
    }
  }
} 