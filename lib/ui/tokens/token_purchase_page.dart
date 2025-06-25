import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/tokens/token_cubit.dart';
import 'package:inker_studio/domain/blocs/tokens/token_state.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/shared/widgets/token_balance_indicator.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class TokenPurchasePage extends StatelessWidget {
  static const String routeName = '/token-purchase';
  
  const TokenPurchasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(
          'Token Store',
          style: TextStyleTheme.headline2.copyWith(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: TokenBalanceChip(),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Large icon
              Container(
                padding: const EdgeInsets.all(32),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  size: 80,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              const SizedBox(height: 32),
              
              // Coming Soon text
              Text(
                'Token Purchase',
                style: TextStyleTheme.headline1.copyWith(
                  fontSize: 28,
                ),
              ),
              const SizedBox(height: 16),
              
              Text(
                'Coming Soon!',
                style: TextStyleTheme.headline2.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 24),
              
              // Description
              Container(
                constraints: const BoxConstraints(maxWidth: 400),
                child: Text(
                  'We\'re working on bringing you the best token purchasing experience. Stay tuned for updates!',
                  textAlign: TextAlign.center,
                  style: TextStyleTheme.bodyText1.copyWith(
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
              ),
              const SizedBox(height: 48),
              
              // Current balance display
              BlocBuilder<TokenCubit, TokenState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loaded: (balance, _, __) => Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.3),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Current Balance',
                            style: TextStyleTheme.bodyText2.copyWith(
                              color: Colors.white70,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.token,
                                color: Theme.of(context).colorScheme.secondary,
                                size: 28,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '${balance.balance}',
                                style: TextStyleTheme.headline1.copyWith(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    orElse: () => const SizedBox.shrink(),
                  );
                },
              ),
              const SizedBox(height: 32),
              
              // Preview of token packages (disabled)
              _buildTokenPackagePreview(context),
            ],
          ),
        ),
      ),
    );
  }
  
  Widget _buildTokenPackagePreview(BuildContext context) {
    return Column(
      children: [
        Text(
          'Available Packages',
          style: TextStyleTheme.headline3.copyWith(
            color: Colors.white70,
          ),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            _buildPackageCard(
              context,
              title: 'Starter Pack',
              tokens: 10,
              price: '\$4.99',
              popular: false,
            ),
            _buildPackageCard(
              context,
              title: 'Pro Pack',
              tokens: 25,
              price: '\$9.99',
              popular: true,
            ),
            _buildPackageCard(
              context,
              title: 'Ultimate Pack',
              tokens: 60,
              price: '\$19.99',
              popular: false,
            ),
          ],
        ),
      ],
    );
  }
  
  Widget _buildPackageCard(
    BuildContext context, {
    required String title,
    required int tokens,
    required String price,
    required bool popular,
  }) {
    return Opacity(
      opacity: 0.5,
      child: Container(
        width: 160,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: popular
              ? Theme.of(context).colorScheme.secondary.withValues(alpha: 0.2)
              : Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: popular
                ? Theme.of(context).colorScheme.secondary
                : Theme.of(context).colorScheme.secondary.withValues(alpha: 0.3),
            width: popular ? 2 : 1,
          ),
        ),
        child: Column(
          children: [
            if (popular)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'POPULAR',
                  style: TextStyleTheme.caption.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
              ),
            if (popular) const SizedBox(height: 8),
            Text(
              title,
              style: TextStyleTheme.headline3.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.token,
                  color: Theme.of(context).colorScheme.secondary,
                  size: 20,
                ),
                const SizedBox(width: 4),
                Text(
                  '$tokens',
                  style: TextStyleTheme.headline2.copyWith(
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              price,
              style: TextStyleTheme.bodyText1.copyWith(
                color: Colors.white70,
                decoration: TextDecoration.lineThrough,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Coming Soon',
                style: TextStyleTheme.caption.copyWith(
                  color: Colors.white70,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}