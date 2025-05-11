import 'package:flutter/material.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'dart:math' as math;
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

enum AnimationState { loading, completed, error }

class SuccessAnimationPage extends StatefulWidget {
  final String title;
  final String subtitle;
  final String? loadingMessage;
  final VoidCallback onAnimationComplete;
  final AnimationState state;
  final String? errorMessage;

  const SuccessAnimationPage({
    super.key,
    required this.title,
    required this.subtitle,
    this.loadingMessage,
    required this.onAnimationComplete,
    required this.state,
    this.errorMessage,
  });

  @override
  _SuccessAnimationPageState createState() => _SuccessAnimationPageState();
}

class _SuccessAnimationPageState extends State<SuccessAnimationPage>
    with TickerProviderStateMixin {
  late AnimationController _rocketController;
  late AnimationController _starsController;
  late Animation<double> _rocketYAnimation;
  final List<StarData> _stars = [];
  final int starCount = 30;

  @override
  void initState() {
    super.initState();

    _rocketController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _starsController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _rocketYAnimation = Tween<double>(begin: -10, end: 10).animate(
      CurvedAnimation(parent: _rocketController, curve: Curves.easeInOut),
    );

    _generateRandomStars();

    _rocketController.repeat(reverse: true);
    _starsController.repeat(reverse: true);
  }

  void _generateRandomStars() {
    final random = math.Random();
    for (int i = 0; i < starCount; i++) {
      double x, y;
      do {
        x = random.nextDouble() * 400 - 200;
        y = random.nextDouble() * 600 - 300;
      } while (x.abs() < 100 && y.abs() < 100);

      _stars.add(StarData(
        x: x,
        y: y,
        size: random.nextDouble() * 10 + 5,
      ));
    }
  }

  @override
  void dispose() {
    _rocketController.dispose();
    _starsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          if (widget.state == AnimationState.loading) _buildStars(),
          Center(
            child: _buildContent(),
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    switch (widget.state) {
      case AnimationState.loading:
        return _buildLoadingContent();
      case AnimationState.completed:
        return _buildCompletedContent();
      case AnimationState.error:
        return _buildErrorContent();
    }
  }

  Widget _buildLoadingContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedBuilder(
          animation: _rocketController,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0, _rocketYAnimation.value),
              child: Image.asset('assets/rocket.png', height: 200),
            );
          },
        ),
        const SizedBox(height: 20),
        Text(
          widget.loadingMessage ?? S.of(context).processingRequest,
          style: TextStyleTheme.copyWith(fontSize: 18, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF7450FF)),
        ),
      ],
    );
  }

  Widget _buildCompletedContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/calendar.png', height: 150),
          const SizedBox(height: 20),
          Text(
            widget.title,
            style: TextStyleTheme.copyWith(
                fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            widget.subtitle,
            style: TextStyleTheme.copyWith(fontSize: 16, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          SizedBox(
            key: const Key('successAnimationPageDoneButton'),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: widget.onAnimationComplete,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF7450FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: Text(
                S.of(context).done,
                style: TextStyleTheme.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.error_outline, size: 100, color: Colors.red),
        const SizedBox(height: 20),
        Text(
          'Error',
          style: TextStyleTheme.copyWith(
              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 286,
          child: Text(
            widget.errorMessage ??
                'Ha ocurrido un error. Por favor, inténtalo de nuevo.',
            style: TextStyleTheme.copyWith(fontSize: 16, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: widget.onAnimationComplete,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF7450FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            minimumSize: const Size(200, 50),
          ),
          child: Text(
            'Volver',
            style: TextStyleTheme.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStars() {
    return AnimatedBuilder(
      animation: _starsController,
      builder: (context, child) {
        return Stack(
          children: _stars.map((star) {
            return Positioned(
              left: star.x + MediaQuery.of(context).size.width / 2,
              top: star.y + MediaQuery.of(context).size.height / 2,
              child: Opacity(
                opacity: 0.5 + (_starsController.value * 0.5),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: star.size + (_starsController.value * 3),
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}

class StarData {
  final double x;
  final double y;
  final double size;

  StarData({required this.x, required this.y, required this.size});
}
