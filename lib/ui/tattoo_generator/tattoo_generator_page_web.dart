import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/tattoo_styles.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/user_tattoo_design_dto.dart';
import 'package:inker_studio/domain/blocs/tattoo_generator/tattoo_generator_bloc.dart';
import 'package:inker_studio/domain/blocs/tokens/token_cubit.dart';
import 'package:inker_studio/domain/services/tattoo_generator/tatto_generator_service.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/shared/widgets/loading_indicator.dart';
import 'package:inker_studio/ui/shared/widgets/token_balance_indicator.dart';
import 'package:inker_studio/ui/tattoo_generator/tattoo_immersive_viewer_page.dart';
import 'package:inker_studio/ui/tattoo_generator/widgets/token_onboarding_dialog.dart';
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

    // Update UI to show/hide UI elements based on tab
    setState(() {});

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
    final isDesktop = Responsive.isDesktop(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onSurface),
        title: Row(
          children: [
            Icon(Icons.auto_awesome, color: Theme.of(context).colorScheme.secondary, size: 24),
            const SizedBox(width: 8),
            Text(
              s.tattooGenerator, 
              style: TextStyleTheme.headline2.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 20,
              ),
            ),
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24.0),
            child: TokenBalanceIndicator(
              fontSize: 14,
              showRefreshButton: true,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Theme.of(context).dividerColor,
                  width: 1,
                ),
              ),
            ),
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: screenWidth >= 1400 ? 800 : (isDesktop ? 600 : double.infinity),
                ),
                child: TabBar(
                  controller: _tabController,
                  indicatorColor: Theme.of(context).colorScheme.secondary,
                  labelColor: Theme.of(context).colorScheme.onSurface,
                  unselectedLabelColor: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
                  indicatorWeight: 3,
                  labelStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
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
          return TabBarView(
            controller: _tabController,
            children: [
              _buildGenerateTab(s, state),
              _buildHistoryTab(s, state),
              _buildFavoritesTab(s, state),
            ],
          );
        },
      ),
    );
  }

  Widget _buildGenerateTab(S s, TattooGeneratorState state) {
    final isDesktop = Responsive.isDesktop(context);
    final isDesktopLarge = Responsive.isDesktopLarge(context);
    final showDesktopLayout = isDesktop || isDesktopLarge;
    
    if (!showDesktopLayout) {
      // Mobile/Tablet layout remains similar but improved
      return Container(
        color: Theme.of(context).colorScheme.surface,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Theme.of(context).dividerColor,
                    width: 1,
                  ),
                ),
                child: Column(
                  children: [
                    _buildPromptInputWeb(s),
                    const SizedBox(height: 24),
                    _buildStyleSelectorWeb(s),
                    const SizedBox(height: 24),
                    _buildGenerateButtonWeb(s),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Container(
                height: 400,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Theme.of(context).dividerColor,
                    width: 1,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
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
        ),
      );
    }
    
    // Desktop layout - proper web experience with sidebar
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Row(
        children: [
          // Left sidebar - Style selector
          Container(
            width: 280,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
              border: Border(
                right: BorderSide(
                  color: Theme.of(context).dividerColor,
                  width: 1,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Theme.of(context).dividerColor,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.palette,
                        size: 20,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        s.chooseStyle,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: _buildStyleSidebarWeb(s),
                ),
              ],
            ),
          ),
          
          // Center content - Input and preview
          Expanded(
            child: Row(
              children: [
                // Input section
                Expanded(
                  flex: 5,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Header
                        Row(
                          children: [
                            Icon(
                              Icons.auto_awesome,
                              size: 32,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            const SizedBox(width: 12),
                            Text(
                              'Genera tu diseño',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                            ),
                            const Spacer(),
                            // Buy tokens button
                            TextButton.icon(
                              icon: Icon(
                                Icons.token,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              label: Text(
                                'Get Tokens',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.secondary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                    color: Theme.of(context).colorScheme.secondary,
                                    width: 2,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).pushNamed('/token-purchase');
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Describe tu idea y presiona generar',
                          style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
                          ),
                        ),
                        const SizedBox(height: 32),
                        
                        // Prompt input
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildPromptInputWeb(s),
                              const SizedBox(height: 24),
                              _buildGenerateButtonWeb(s),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                
                // Divider
                Container(
                  width: 1,
                  color: Theme.of(context).dividerColor,
                ),
                
                // Preview section
                Expanded(
                  flex: 6,
                  child: Container(
                    padding: const EdgeInsets.all(32),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Theme.of(context).dividerColor,
                          width: 1,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: state.maybeWhen(
                          loading: () => const Center(child: LoadingIndicator()),
                          loaded: (images, prompt, style, designId) =>
                              _buildResultsViewWeb(s, images, prompt, style, designId),
                          orElse: () => _buildEmptyStateWeb(s),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPromptInputWeb(S s) {
    final isDesktop = Responsive.isDesktop(context);
    final isDesktopLarge = Responsive.isDesktopLarge(context);
    final showDesktopLayout = isDesktop || isDesktopLarge;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          s.describeYourTattoo,
          style: TextStyle(
            fontSize: showDesktopLayout ? 16 : 18,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _promptController,
          maxLines: showDesktopLayout ? 5 : 3,
          style: TextStyle(
            fontSize: 14,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          textInputAction: TextInputAction.done,
          onSubmitted: (_) => FocusScope.of(context).unfocus(),
          decoration: InputDecoration(
            fillColor: Theme.of(context).colorScheme.surfaceContainerHighest,
            filled: true,
            hintText: s.tattooDescriptionHint,
            hintStyle: TextStyle(
              fontSize: 14,
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Theme.of(context).dividerColor,
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Theme.of(context).dividerColor,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.secondary,
                width: 2,
              ),
            ),
            contentPadding: const EdgeInsets.all(16),
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
    final isDesktopLarge = Responsive.isDesktopLarge(context);
    final showDesktopLayout = isDesktop || isDesktopLarge;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          s.chooseStyle,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: 12),
        // Grid layout for styles
        Container(
          constraints: BoxConstraints(
            maxHeight: showDesktopLayout ? 240 : 320,
          ),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const AlwaysScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: showDesktopLayout ? 4 : 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: showDesktopLayout ? 1.3 : 1.1,
            ),
            itemCount: TattooStyle.values.length,
            itemBuilder: (context, index) {
              final style = TattooStyle.values[index];
              final isSelected = style == _selectedStyle;
              
              return InkWell(
                onTap: () {
                  setState(() {
                    _selectedStyle = style;
                  });
                  context.read<TattooGeneratorBloc>().add(
                        TattooGeneratorEvent.updateStyle(style),
                      );
                },
                borderRadius: BorderRadius.circular(8),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? Theme.of(context).colorScheme.secondaryContainer
                        : Theme.of(context).colorScheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: isSelected
                          ? Theme.of(context).colorScheme.secondary
                          : Theme.of(context).dividerColor,
                      width: isSelected ? 2 : 1,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        _getStyleEmoji(style),
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 4),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Text(
                          _localizedTattooStyle(style, context),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                            color: isSelected
                                ? Theme.of(context).colorScheme.onSecondaryContainer
                                : Theme.of(context).colorScheme.onSurface,
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
  
  Widget _buildStyleSidebarWeb(S s) {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: TattooStyle.values.length,
      itemBuilder: (context, index) {
        final style = TattooStyle.values[index];
        final isSelected = style == _selectedStyle;
        
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: InkWell(
            onTap: () {
              setState(() {
                _selectedStyle = style;
              });
              context.read<TattooGeneratorBloc>().add(
                    TattooGeneratorEvent.updateStyle(style),
                  );
            },
            borderRadius: BorderRadius.circular(8),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: isSelected
                    ? Theme.of(context).colorScheme.secondaryContainer
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: isSelected
                      ? Theme.of(context).colorScheme.secondary
                      : Colors.transparent,
                  width: 1,
                ),
              ),
              child: Row(
                children: [
                  Text(
                    _getStyleEmoji(style),
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      _localizedTattooStyle(style, context),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                        color: isSelected
                            ? Theme.of(context).colorScheme.onSecondaryContainer
                            : Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ),
                  if (isSelected)
                    Icon(
                      Icons.check_circle,
                      size: 18,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildGenerateButtonWeb(S s) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton.icon(
        icon: const Icon(Icons.auto_awesome, size: 20),
        label: Text(
          s.generateTattoo,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 0,
        ),
        onPressed: () async {
          if (_promptController.text.trim().isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(s.pleaseEnterDescription)),
            );
            return;
          }

          // Check token balance before generation
          final tokenCubit = context.read<TokenCubit>();
          final hasBalance = await tokenCubit.checkBalanceForGeneration(photosToGenerate: 2);
          
          if (!hasBalance) {
            if (!mounted) return;
            // Show insufficient tokens dialog
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Insufficient Tokens'),
                content: const Text('You need 4 tokens to generate tattoo designs. Please purchase more tokens to continue.'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text(s.cancel),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      // Navigate to token purchase page
                      Navigator.of(context).pushNamed('/token-purchase');
                    },
                    child: const Text('Buy Tokens'),
                  ),
                ],
              ),
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
                          color: primaryColor.withValues(alpha: 0.5),
                          child: const Center(
                            child: LoadingIndicator(),
                          ),
                        ),
                        errorWidget: (context, url, error) => Container(
                          color: primaryColor.withValues(alpha: 0.5),
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
                              Colors.black.withValues(alpha: 0.8),
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
                                size: 18,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                s.viewDetails,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
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
                        : Colors.white.withValues(alpha: 0.4),
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
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer.withValues(alpha: 0.3),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.auto_awesome,
                size: 48,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              s.emptyTattooGeneratorMessage,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Describe tu idea y presiona generar',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHistoryTab(S s, TattooGeneratorState state) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: state.maybeWhen(
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
      ),
    );
  }

  Widget _buildFavoritesTab(S s, TattooGeneratorState state) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: state.maybeWhen(
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
      ),
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
        color: Theme.of(context).colorScheme.secondary,
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).colorScheme.secondaryContainer.withValues(alpha: 0.2),
                      ),
                      child: Icon(
                        Icons.image_outlined,
                        size: 56, 
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      emptyMessage,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      _tabController.index == 1 
                        ? 'Genera tatuajes para construir tu historial' 
                        : 'Añade diseños a favoritos para verlos aquí',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
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
    final isDesktopLarge = Responsive.isDesktopLarge(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final isLargeDesktop = screenWidth >= 1400;
    final isTablet = Responsive.isTablet(context);
    final showDesktopLayout = isDesktop || isDesktopLarge;
    final crossAxisCount = isLargeDesktop ? 5 : (showDesktopLayout ? 4 : (isTablet ? 3 : 2));

    return RefreshIndicator(
      onRefresh: onRefresh,
      color: Theme.of(context).colorScheme.secondary,
      backgroundColor: Colors.white,
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: isLargeDesktop ? 1400 : (showDesktopLayout ? 1200 : double.infinity),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isLargeDesktop ? 60 : (showDesktopLayout ? 40 : 24),
              vertical: showDesktopLayout ? 32 : 20,
            ),
            child: GridView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.8,
              ),
              itemCount: designs.length,
              itemBuilder: (context, index) {
                final design = designs[index];
                return _buildDesignCardWeb(design, s);
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDesignCardWeb(UserTattooDesignDto design, S s) {
    final pageController = PageController(viewportFraction: 1.0);
    final ValueNotifier<int> currentImageIndex = ValueNotifier<int>(0);
    final isHovered = ValueNotifier<bool>(false);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => isHovered.value = true,
      onExit: (_) => isHovered.value = false,
      child: ValueListenableBuilder<bool>(
        valueListenable: isHovered,
        builder: (context, hovering, child) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            transform: hovering 
                ? (Matrix4.identity()..scale(1.02))
                : Matrix4.identity(),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: hovering 
                    ? Theme.of(context).colorScheme.secondary 
                    : Theme.of(context).dividerColor,
                width: hovering ? 2 : 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: hovering
                      ? Theme.of(context).colorScheme.secondary.withValues(alpha: 0.2)
                      : Colors.black.withValues(alpha: 0.1),
                  blurRadius: hovering ? 12 : 4,
                  offset: Offset(0, hovering ? 6 : 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image carousel
                AspectRatio(
                  aspectRatio: 1.0,
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
                                  top: Radius.circular(12)),
                              child: Hero(
                                tag: 'design_${design.id}_$imageIndex',
                                child: CachedNetworkImage(
                                  imageUrl: design.imageUrls[imageIndex],
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) => Container(
                                    color: Theme.of(context).colorScheme.surfaceContainerHighest,
                                    child: const Center(
                                      child: LoadingIndicator(),
                                    ),
                                  ),
                                  errorWidget: (context, url, error) => Container(
                                    color: Theme.of(context).colorScheme.surfaceContainerHighest,
                                    child: Center(
                                      child: Icon(Icons.error,
                                          color: Theme.of(context).colorScheme.error),
                                    ),
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
                              const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.9),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.2),
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              ),
                            ],
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
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context).colorScheme.onSurface,
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
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              context.read<TattooGeneratorBloc>().add(
                                    TattooGeneratorEvent.toggleFavorite(
                                      designId: design.id,
                                      isFavorite: !(design.isFavorite ?? false),
                                    ),
                                  );
                            },
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.9),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withValues(alpha: 0.2),
                                    blurRadius: 4,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Icon(
                                design.isFavorite ?? false
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: design.isFavorite ?? false
                                    ? Theme.of(context).colorScheme.error
                                    : Theme.of(context).colorScheme.onSurface,
                                size: 18,
                              ),
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
                                    return AnimatedContainer(
                                      duration: const Duration(milliseconds: 200),
                                      width: dotIndex == index ? 16 : 6,
                                      height: 6,
                                      margin:
                                          const EdgeInsets.symmetric(horizontal: 2),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: dotIndex == index
                                            ? Colors.white
                                            : Colors.white.withValues(alpha: 0.5),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withValues(alpha: 0.3),
                                            blurRadius: 2,
                                            offset: const Offset(0, 1),
                                          ),
                                        ],
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
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            design.userQuery,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          _formatDate(design.createdAt ?? DateTime.now(), s),
                          style: TextStyle(
                            fontSize: 11,
                            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
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