import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/features/auth/bloc/onboarding/onboarding_bloc.dart';
import 'package:inker_studio/features/auth/bloc/onboarding/onboarding_content.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/shared/widgets/buttons.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';

class OnBoardingWebView extends StatefulWidget {
  const OnBoardingWebView({super.key});

  @override
  State<OnBoardingWebView> createState() => _OnBoardingWebViewState();
}

class _OnBoardingWebViewState extends State<OnBoardingWebView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeInAnimation;
  late Animation<Offset> _slideAnimation;

  final List<OnBoardingContent> _contents = [
    OnBoardingContent.page1,
    OnBoardingContent.page2,
    OnBoardingContent.page3,
  ];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );

    _fadeInAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0.0, 0.6, curve: Curves.easeOut),
    ));

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0.2, 0.8, curve: Curves.easeOutCubic),
    ));

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final localizations = S.of(context);
    final isDesktopLarge = Responsive.isDesktopLarge(context);
    
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: isDesktopLarge ? 1400 : 1200,
            maxHeight: 900,
          ),
          child: FadeTransition(
            opacity: _fadeInAnimation,
            child: SlideTransition(
              position: _slideAnimation,
              child: Padding(
                padding: EdgeInsets.all(
                  Responsive.value(
                    context,
                    mobile: 24,
                    tablet: 40,
                    desktop: 60,
                    desktopLarge: 80,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: _buildImageSection(context),
                    ),
                    SizedBox(width: Responsive.value(
                      context,
                      mobile: 40,
                      tablet: 60,
                      desktop: 80,
                      desktopLarge: 100,
                    )),
                    Expanded(
                      flex: 5,
                      child: _buildContentSection(context, theme, localizations),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImageSection(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 40,
            offset: const Offset(0, 20),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              _contents[2].backgroundImage,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    theme.primaryColor.withOpacity(0.1),
                    theme.colorScheme.secondary.withOpacity(0.1),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContentSection(
    BuildContext context,
    ThemeData theme,
    S localizations,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Bienvenido a Inker',
          style: theme.textTheme.displayLarge?.copyWith(
            fontSize: Responsive.fontSize(context, 42),
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: [
              Shadow(
                offset: const Offset(0, 2),
                blurRadius: 4,
                color: Colors.black.withOpacity(0.3),
              ),
            ],
          ),
        ),
        SizedBox(height: Responsive.value(context, mobile: 16, desktop: 20)),
        Text(
          'La plataforma que conecta artistas del tatuaje con sus clientes',
          style: theme.textTheme.titleLarge?.copyWith(
            fontSize: Responsive.fontSize(context, 18),
            color: Colors.white.withOpacity(0.9),
          ),
        ),
        SizedBox(height: Responsive.value(context, mobile: 24, desktop: 32)),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ..._buildFeaturesList(context, theme),
              ],
            ),
          ),
        ),
        SizedBox(height: Responsive.value(context, mobile: 20, desktop: 24)),
        _buildActionButtons(context, localizations),
      ],
    );
  }

  List<Widget> _buildFeaturesList(BuildContext context, ThemeData theme) {
    final features = [
      {
        'icon': Icons.location_on_outlined,
        'title': _contents[0].title,
        'description': _contents[0].description,
      },
      {
        'icon': Icons.calendar_today_outlined,
        'title': _contents[1].title,
        'description': _contents[1].description,
      },
      {
        'icon': Icons.palette_outlined,
        'title': _contents[2].title,
        'description': _contents[2].description,
      },
    ];

    return features.map((feature) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: Responsive.value(context, mobile: 16, desktop: 20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: theme.colorScheme.tertiary.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                feature['icon'] as IconData,
                color: theme.colorScheme.tertiary,
                size: 24,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    feature['title'] as String,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontSize: Responsive.fontSize(context, 16),
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    feature['description'] as String,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontSize: Responsive.fontSize(context, 13),
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }).toList();
  }

  Widget _buildActionButtons(BuildContext context, S localizations) {
    final theme = Theme.of(context);
    final buttonHeight = Responsive.value(context, mobile: 48, desktop: 56).toDouble();
    final fontSize = Responsive.fontSize(context, 16);
    
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: buttonHeight,
          child: TextButton(
            onPressed: () {
              context
                  .read<OnBoardingBloc>()
                  .add(const OnBoardingRegisterPressed());
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color(0xff232434),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Text(
              'Registrarme',
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          height: buttonHeight,
          child: TextButton(
            onPressed: () {
              context
                  .read<OnBoardingBloc>()
                  .add(const OnBoardingSignInPressed());
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color(0xff7450FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Text(
              'Iniciar sesión',
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ),
      ],
    );
  }
}