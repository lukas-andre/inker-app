import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class BreadcrumbItem {
  final String label;
  final VoidCallback? onTap;
  final bool isActive;

  BreadcrumbItem({
    required this.label,
    this.onTap,
    this.isActive = false,
  });
}

class BreadcrumbsWeb extends StatelessWidget {
  final List<BreadcrumbItem> items;

  const BreadcrumbsWeb({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Ícono de home
        IconButton(
          icon: Icon(
            Icons.home,
            size: 20,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          onPressed: () => Navigator.of(context).popUntil((route) => route.isFirst),
        ),
        // Items del breadcrumb
        ...items.asMap().entries.expand((entry) {
          final index = entry.key;
          final item = entry.value;

          return [
            // Separador
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Icon(
                Icons.chevron_right,
                size: 16,
                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
              ),
            ),
            // Item
            if (item.isActive || item.onTap == null)
              Text(
                item.label,
                style: TextStyleTheme.copyWith(
                  fontSize: 14,
                  fontWeight: item.isActive ? FontWeight.w600 : FontWeight.normal,
                  color: item.isActive
                      ? Theme.of(context).colorScheme.secondary
                      : Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                ),
              )
            else
              InkWell(
                onTap: item.onTap,
                borderRadius: BorderRadius.circular(4),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Text(
                    item.label,
                    style: TextStyleTheme.copyWith(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ),
          ];
        }),
      ],
    );
  }
}