import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/features/onboarding/bloc/onboarding/onboarding_bloc.dart'
    show
        OnBoardingBloc,
        OnBoardingNextOrForward,
        OnBoardingRegisterPressed,
        OnBoardingSignInPressed,
        OnBoardingState;
import 'package:inker_studio/features/onboarding/models/onboarding_content.dart'
    show OnBoardingContent;
import 'package:inker_studio/features/onboarding/ui/onboarding/widgets/signin_and_register_buttons.dart'
    show SingInAndRegisterButton;
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';
import 'package:dots_indicator/dots_indicator.dart';

class OnBoardingMobileView extends StatefulWidget {
  const OnBoardingMobileView({super.key});

  @override
  State<OnBoardingMobileView> createState() => _OnBoardingMobileViewState();
}

class _OnBoardingMobileViewState extends State<OnBoardingMobileView>
    with TickerProviderStateMixin {
  late PageController _pageController;
  late AnimationController _fadeController;
  late Animation<double> _fadeAnimation;

  final List<OnBoardingContent> _contents = [
    OnBoardingContent.page1,
    OnBoardingContent.page2,
    OnBoardingContent.page3,
  ];

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeInOut,
    ));

    _fadeController.forward();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _fadeController.dispose();
    super.dispose();
  }

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });

    // Actualizar el BLoC
    context.read<OnBoardingBloc>().add(OnBoardingNextOrForward(page));

    // Reiniciar animación de fade
    _fadeController.reset();
    _fadeController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingBloc, OnBoardingState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: Stack(
            children: [
              _buildPageView(context),
              _buildTopSection(context),
              _buildBottomSection(context),
            ],
          ),
        );
      },
    );
  }

  Widget _buildPageView(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      onPageChanged: _onPageChanged,
      itemCount: _contents.length,
      itemBuilder: (context, index) {
        return _buildPage(context, _contents[index], index);
      },
    );
  }

  Widget _buildPage(
      BuildContext context, OnBoardingContent content, int index) {
    return Stack(
      fit: StackFit.expand,
      children: [
        _buildBackgroundImage(context, content),
        _buildContent(context, content),
      ],
    );
  }

  Widget _buildBackgroundImage(
      BuildContext context, OnBoardingContent content) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final imageHeight = _calculateImageHeight(screenHeight);
    final imageScale = imageHeight / 900;

    return Positioned(
      bottom: _calculateBottomPosition(content, screenHeight),
      left: 0,
      right: 0,
      height: imageHeight,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // Imagen con opacity
          Positioned(
            bottom: 0,
            left: _calculateLeftPosition(content, screenWidth, imageScale),
            child: Opacity(
              opacity: 0.3,
              child: Image.asset(
                content.backgroundImage,
                height: imageHeight,
                fit: BoxFit.contain,
              ),
            ),
          ),
          // Imagen con blur
          Positioned(
            bottom: 0,
            left: _calculateLeftPosition(content, screenWidth, imageScale),
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Image.asset(
                  content.backgroundImage,
                  height: imageHeight,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  double _calculateImageHeight(double screenHeight) {
    final isMobileSmall = Responsive.isMobileSmall(context);
    final baseHeight = screenHeight * 0.65;

    if (isMobileSmall) {
      return baseHeight.clamp(250, 400);
    }
    return baseHeight.clamp(400, 700);
  }

  double _calculateBottomPosition(
      OnBoardingContent content, double screenHeight) {
    final basePosition = content.bottomPosition;
    final scaleFactor = screenHeight / 812;

    return basePosition * scaleFactor;
  }

  double _calculateLeftPosition(
      OnBoardingContent content, double screenWidth, double scale) {
    if (content.leftPosition == 0) {
      return (screenWidth - (content.height ?? 900) * scale * 0.6) / 2;
    }

    final baseLeft = content.leftPosition;
    final scaledLeft = baseLeft * scale;

    return (screenWidth / 2) + scaledLeft;
  }

  Widget _buildContent(BuildContext context, OnBoardingContent content) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          top: Responsive.value(context, mobile: 80, tablet: 60).toDouble(),
          left: Responsive.value(context, mobile: 24).toDouble(),
          right: Responsive.value(context, mobile: 24).toDouble(),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeTransition(
              opacity: _fadeAnimation,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    content.title,
                    style: theme.textTheme.displaySmall?.copyWith(
                      fontSize: Responsive.fontSize(context, 32),
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
                  const SizedBox(height: 16),
                  Text(
                    content.description,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      fontSize: Responsive.fontSize(context, 16),
                      color: Colors.white.withOpacity(0.9),
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopSection(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.all(Responsive.value(context, mobile: 24).toDouble()),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Indicador de página personalizado con dots
            _buildPageIndicator(context),
            // Botón omitir y contador de páginas
            _buildTopRightSection(context),
          ],
        ),
      ),
    );
  }

  Widget _buildPageIndicator(BuildContext context) {
    return Row(
      children: [
        // Contador de páginas
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.tertiary,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            '${_currentPage + 1} de ${_contents.length}',
            style: TextStyle(
              fontSize: Responsive.fontSize(context, 14),
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 16),
        // Dots indicator
        DotsIndicator(
          dotsCount: _contents.length,
          position: _currentPage,
          decorator: DotsDecorator(
            size: const Size(8, 8),
            activeSize: const Size(20, 8),
            activeColor: Theme.of(context).colorScheme.tertiary,
            color: Colors.black,
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTopRightSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (_contents[_currentPage].showSkipButton)
          TextButton(
            onPressed: () {
              _pageController.animateToPage(
                _contents.length - 1,
                duration: const Duration(milliseconds: 600),
                curve: Curves.easeInOut,
              );
            },
            child: Text(
              'Omitir',
              style: TextStyle(
                fontSize: Responsive.fontSize(context, 16),
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildBottomSection(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.value(context, mobile: 24).toDouble(),
            vertical: Responsive.value(context, mobile: 20).toDouble(),
          ),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: _contents[_currentPage].showSingInAndRegisterButtons
                ? _buildActionButtons(context)
                : _buildNavigationButton(context),
          ),
        ),
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    final buttonHeight =
        Responsive.value(context, mobile: 48, tablet: 54).toDouble();
    final fontSize = Responsive.fontSize(context, 16);

    return Column(
      key: const ValueKey('action_buttons'),
      mainAxisSize: MainAxisSize.min,
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
              shape: const StadiumBorder(),
            ),
            child: Text(
              'Registrarme',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: fontSize,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
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
              shape: const StadiumBorder(),
            ),
            child: Text(
              'Iniciar sesión',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: fontSize,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNavigationButton(BuildContext context) {
    final buttonHeight =
        Responsive.value(context, mobile: 48, tablet: 54).toDouble();
    final fontSize = Responsive.fontSize(context, 16);

    return SizedBox(
      key: const ValueKey('navigation_button'),
      width: double.infinity,
      height: buttonHeight,
      child: TextButton(
        onPressed: () {
          if (_currentPage < _contents.length - 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          }
        },
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Theme.of(context).colorScheme.secondary,
          shape: const StadiumBorder(),
        ),
        child: Text(
          'Continuar',
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
