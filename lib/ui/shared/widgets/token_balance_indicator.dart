import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/tokens/token_cubit.dart';
import 'package:inker_studio/domain/blocs/tokens/token_state.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class TokenBalanceIndicator extends StatelessWidget {
  final VoidCallback? onTap;
  final bool showRefreshButton;
  final Color? textColor;
  final double fontSize;

  const TokenBalanceIndicator({
    super.key,
    this.onTap,
    this.showRefreshButton = false,
    this.textColor,
    this.fontSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TokenCubit, TokenState>(
      builder: (context, state) {
        return state.when(
          initial: () => _buildLoadingIndicator(context),
          loading: () => _buildLoadingIndicator(context),
          loaded: (balance, packages, isRefreshing) => _buildBalanceDisplay(
            context,
            balance.balance,
            isRefreshing: isRefreshing,
          ),
          error: (message, lastKnownBalance) => _buildErrorDisplay(
            context,
            lastKnownBalance?.balance ?? 0,
            message,
          ),
          insufficientBalance: (balance, requiredAmount, packages) => 
            _buildBalanceDisplay(
              context, 
              balance.balance,
              isInsufficient: true,
              requiredAmount: requiredAmount,
            ),
        );
      },
    );
  }

  Widget _buildLoadingIndicator(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface.withOpacity(0.7),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 12,
            height: 12,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(
                Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            '...',
            style: TextStyleTheme.copyWith(
              color: textColor ?? Colors.white70,
              fontSize: fontSize,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBalanceDisplay(
    BuildContext context,
    int balance, {
    bool isRefreshing = false,
    bool isInsufficient = false,
    int? requiredAmount,
  }) {
    final displayColor = isInsufficient 
        ? Theme.of(context).colorScheme.error
        : textColor ?? Colors.white;

    return Tooltip(
      message: showRefreshButton ? 'Click to refresh balance' : 'Click to buy more tokens',
      child: GestureDetector(
        onTap: onTap ?? () {
          if (showRefreshButton) {
            // Refresh balance
            context.read<TokenCubit>().refreshBalance();
          } else {
            // Navigate to token purchase page
            Navigator.of(context).pushNamed('/token-purchase');
          }
        },
        child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isInsufficient
              ? Theme.of(context).colorScheme.error.withOpacity(0.1)
              : Theme.of(context).colorScheme.surface.withOpacity(0.7),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isInsufficient
                ? Theme.of(context).colorScheme.error.withOpacity(0.3)
                : Theme.of(context).colorScheme.secondary.withOpacity(0.3),
            width: 1,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.token,
              size: 16,
              color: displayColor,
            ),
            const SizedBox(width: 6),
            if (isRefreshing)
              SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(displayColor),
                ),
              )
            else
              Text(
                balance.toString(),
                style: TextStyleTheme.copyWith(
                  color: displayColor,
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            if (isInsufficient && requiredAmount != null) ...[
              Text(
                ' / $requiredAmount',
                style: TextStyleTheme.copyWith(
                  color: displayColor.withOpacity(0.7),
                  fontSize: fontSize - 2,
                ),
              ),
            ],
            if (showRefreshButton && !isRefreshing) ...[
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: displayColor.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.refresh,
                  size: 14,
                  color: displayColor,
                ),
              ),
            ],
          ],
        ),
      ),
      ),
    );
  }

  Widget _buildErrorDisplay(
    BuildContext context,
    int lastKnownBalance,
    String errorMessage,
  ) {
    return Tooltip(
      message: 'Click to retry',
      child: GestureDetector(
        onTap: onTap ?? () => context.read<TokenCubit>().refreshBalance(),
        child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface.withOpacity(0.7),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Theme.of(context).colorScheme.error.withOpacity(0.3),
            width: 1,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.warning_amber_rounded,
              size: 16,
              color: Theme.of(context).colorScheme.error,
            ),
            const SizedBox(width: 6),
            Text(
              lastKnownBalance.toString(),
              style: TextStyleTheme.copyWith(
                color: textColor ?? Colors.white70,
                fontSize: fontSize,
              ),
            ),
            const SizedBox(width: 8),
            Icon(
              Icons.refresh,
              size: 14,
              color: textColor ?? Colors.white70,
            ),
          ],
        ),
      ),
      ),
    );
  }
}

// Simplified version for AppBar
class TokenBalanceChip extends StatelessWidget {
  const TokenBalanceChip({super.key});

  @override
  Widget build(BuildContext context) {
    return const TokenBalanceIndicator(
      fontSize: 12,
      showRefreshButton: false,
    );
  }
}