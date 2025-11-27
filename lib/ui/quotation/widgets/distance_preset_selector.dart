import 'package:flutter/material.dart';
import 'package:inker_studio/constants/quotation_constants.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class DistancePresetSelector extends StatelessWidget {
  final int selectedValue;
  final ValueChanged<int> onChanged;

  const DistancePresetSelector({
    super.key,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ...QuotationConstants.distancePresets.map((preset) {
          final isSelected = selectedValue == preset.value;
          return Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: InkWell(
              onTap: () => onChanged(preset.value),
              borderRadius: BorderRadius.circular(12),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: isSelected
                      ? theme.colorScheme.secondary.withOpacity(0.15)
                      : theme.colorScheme.surfaceContainerHighest.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: isSelected
                        ? theme.colorScheme.secondary
                        : Colors.transparent,
                    width: 2,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? theme.colorScheme.secondary.withOpacity(0.2)
                            : theme.colorScheme.surfaceContainerHighest.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        IconData(preset.iconData, fontFamily: 'MaterialIcons'),
                        color: isSelected
                            ? theme.colorScheme.secondary
                            : Colors.white70,
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _getLabel(l10n, preset.labelKey),
                            style: TextStyleTheme.bodyText1.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            _getDescription(l10n, preset.descriptionKey, preset.value),
                            style: TextStyleTheme.caption.copyWith(
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (isSelected)
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.secondary,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          );
        }),
      ],
    );
  }

  String _getLabel(S l10n, String labelKey) {
    switch (labelKey) {
      case 'myNeighborhood':
        return 'Mi barrio';
      case 'myCity':
        return 'Mi ciudad';
      case 'myRegion':
        return 'Mi región';
      case 'noDistanceLimit':
        return l10n.noDistanceLimit;
      default:
        return labelKey;
    }
  }

  String _getDescription(S l10n, String descriptionKey, int value) {
    if (value == QuotationConstants.unlimitedDistance) {
      return 'Buscar artistas en cualquier lugar';
    }
    
    return l10n.maxDistance(value);
  }
}