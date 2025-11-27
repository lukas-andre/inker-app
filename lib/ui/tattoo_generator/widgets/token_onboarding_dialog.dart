import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/ui/shared/widgets/buttons.dart';

class TokenOnboardingDialog extends StatefulWidget {
  const TokenOnboardingDialog({super.key});

  @override
  State<TokenOnboardingDialog> createState() => _TokenOnboardingDialogState();
}

class _TokenOnboardingDialogState extends State<TokenOnboardingDialog> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 400, 
          maxHeight: MediaQuery.of(context).size.height * 0.8,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
            width: 2,
          ),
        ),
        child: Column(
          children: [
            // Close button
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.white54),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            // Content
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: [
                  _buildWelcomePage(context),
                  _buildTokenExplanationPage(context),
                  _buildHowToGetTokensPage(context),
                  _buildGetStartedPage(context),
                ],
              ),
            ),
            // Page indicators and navigation
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Skip button
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text(
                      'Omitir',
                      style: TextStyleTheme.bodyText2.copyWith(
                        color: Colors.white54,
                      ),
                    ),
                  ),
                  // Page dots
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(4, (index) {
                      return Container(
                        width: 8,
                        height: 8,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentPage == index
                              ? Theme.of(context).colorScheme.secondary
                              : Colors.white24,
                        ),
                      );
                    }),
                  ),
                  // Next button
                  TextButton(
                    onPressed: () {
                      if (_currentPage < 3) {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        Navigator.of(context).pop();
                      }
                    },
                    child: Text(
                      _currentPage < 3 ? 'Siguiente' : '¡Entendido!',
                      style: TextStyleTheme.bodyText2.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.bold,
                      ),
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

  Widget _buildWelcomePage(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
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
            '¡Bienvenido al Generador IA!',
            style: TextStyleTheme.headline1.copyWith(
              fontSize: 22,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            'Crea diseños de tatuajes únicos con inteligencia artificial',
            style: TextStyleTheme.bodyText1.copyWith(
              color: Colors.white70,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildTokenExplanationPage(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.token,
                  size: 64,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              Positioned(
                top: 0,
                right: 20,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.error,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'NEW',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text(
            'Conoce los Tokens',
            style: TextStyleTheme.headline1.copyWith(
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 16),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyleTheme.bodyText1.copyWith(
                color: Colors.white70,
                fontSize: 16,
                height: 1.5,
              ),
              children: [
                const TextSpan(text: 'Cada diseño cuesta '),
                TextSpan(
                  text: '0.5 token',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(text: ' por imagen.\nLos tokens nos ayudan a mantener la calidad.'),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.lightbulb_outline, color: Colors.amber, size: 20),
                const SizedBox(width: 8),
                Flexible(
                  child: Text(
                    'Cada generación crea 2 imágenes = 1 token',
                    style: TextStyleTheme.bodyText2.copyWith(
                      color: Colors.white,
                      fontSize: 13,
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

  Widget _buildHowToGetTokensPage(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.shopping_cart,
              size: 48,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Cómo Obtener Tokens',
            style: TextStyleTheme.headline1.copyWith(
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 20),
          _buildStep(context, '1', 'Revisa tu saldo', 'Mira la esquina superior'),
          const SizedBox(height: 12),
          _buildStep(context, '2', 'Haz clic en el saldo', 'Abre la tienda de tokens'),
          const SizedBox(height: 12),
          _buildStep(context, '3', 'Elige un paquete', '¡Próximamente!'),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.green.withOpacity(0.3)),
            ),
            child: Column(
              children: [
                const Icon(Icons.celebration, color: Colors.green, size: 24),
                const SizedBox(height: 8),
                Text(
                  '¡Tokens gratis para nuevos usuarios!',
                  style: TextStyleTheme.bodyText2.copyWith(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStep(BuildContext context, String number, String title, String subtitle) {
    return Row(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              number,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyleTheme.bodyText1.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: TextStyleTheme.caption.copyWith(
                  color: Colors.white54,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildGetStartedPage(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.secondary.withOpacity(0.3),
                  Theme.of(context).colorScheme.error.withOpacity(0.3),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.rocket_launch,
              size: 48,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            '¡Listo para Crear!',
            style: TextStyleTheme.headline1.copyWith(
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Comienza a diseñar tu tatuaje perfecto',
            style: TextStyleTheme.bodyText1.copyWith(
              color: Colors.white70,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: PrimaryButton(
              text: 'Comenzar',
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          const SizedBox(height: 16),
          TextButton.icon(
            icon: Icon(
              Icons.shopping_cart,
              color: Theme.of(context).colorScheme.secondary,
              size: 20,
            ),
            label: Text(
              'Obtener Más Tokens',
              style: TextStyleTheme.bodyText2.copyWith(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed('/token-purchase');
            },
          ),
        ],
      ),
    );
  }
}