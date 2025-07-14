import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/body_location.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class BodyLocationSelector extends StatefulWidget {
  final String? selectedValue;
  final ValueChanged<String?> onChanged;

  const BodyLocationSelector({
    super.key,
    this.selectedValue,
    required this.onChanged,
  });

  @override
  State<BodyLocationSelector> createState() => _BodyLocationSelectorState();
}

class _BodyLocationSelectorState extends State<BodyLocationSelector> {
  String? _selectedCategory;
  final TextEditingController _otherController = TextEditingController();
  bool _showOtherTextField = false;

  @override
  void initState() {
    super.initState();
    // Find initial category if value is selected
    if (widget.selectedValue != null) {
      _findCategoryForValue(widget.selectedValue!);
      if (widget.selectedValue == 'other') {
        _showOtherTextField = true;
      }
    }
  }

  void _findCategoryForValue(String value) {
    BodyLocation.categories.forEach((category, items) {
      if (items.any((item) => item.value == value)) {
        _selectedCategory = category;
      }
    });
  }

  @override
  void dispose() {
    _otherController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Category selector
        Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerHighest.withOpacity(0.3),
            borderRadius: BorderRadius.circular(12),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _selectedCategory,
              hint: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Selecciona un área del cuerpo',
                  style:
                      TextStyleTheme.bodyText1.copyWith(color: Colors.white60),
                ),
              ),
              isExpanded: true,
              dropdownColor: theme.colorScheme.surface,
              icon: const Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Icon(Icons.arrow_drop_down, color: Colors.white70),
              ),
              items: BodyLocation.categories.keys.map((category) {
                return DropdownMenuItem<String>(
                  value: category,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      BodyLocation.getCategoryLabel(category),
                      style: TextStyleTheme.bodyText1
                          .copyWith(color: Colors.white),
                    ),
                  ),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedCategory = value;
                  _showOtherTextField = false;
                  // Clear selection when category changes
                  widget.onChanged(null);
                });
              },
            ),
          ),
        ),

        const SizedBox(height: 16),

        // Location options for selected category
        if (_selectedCategory != null) ...[
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children:
                BodyLocation.categories[_selectedCategory]!.map((location) {
              final isSelected = widget.selectedValue == location.value;
              return InkWell(
                onTap: () {
                  setState(() {
                    _showOtherTextField = location.value == 'other';
                  });
                  if (location.value != 'other') {
                    widget.onChanged(location.value);
                  } else {
                    widget.onChanged('other');
                  }
                },
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? theme.colorScheme.secondary.withOpacity(0.2)
                        : theme.colorScheme.surfaceContainerHighest
                            .withOpacity(0.5),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: isSelected
                          ? theme.colorScheme.secondary
                          : Colors.transparent,
                      width: 1.5,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        IconData(location.iconData,
                            fontFamily: 'MaterialIcons'),
                        size: 20,
                        color: isSelected
                            ? theme.colorScheme.secondary
                            : Colors.white70,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        _getLocationLabel(l10n, location.labelKey),
                        style: TextStyleTheme.bodyText2.copyWith(
                          color: isSelected ? Colors.white : Colors.white70,
                          fontWeight:
                              isSelected ? FontWeight.w600 : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ],

        // "Other" text field
        if (_showOtherTextField) ...[
          const SizedBox(height: 16),
          TextFormField(
            controller: _otherController,
            style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
            decoration: InputDecoration(
              fillColor:
                  theme.colorScheme.surfaceContainerHighest.withOpacity(0.3),
              filled: true,
              hintText: 'Especifica la ubicación',
              hintStyle:
                  TextStyleTheme.bodyText1.copyWith(color: Colors.white60),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: theme.colorScheme.secondary,
                  width: 2,
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            ),
            onChanged: (value) {
              // Append the custom value to 'other'
              widget.onChanged(value.isEmpty ? 'other' : 'other:$value');
            },
          ),
        ],
      ],
    );
  }

  String _getLocationLabel(S l10n, String labelKey) {
    // TODO: Replace with actual localized strings
    switch (labelKey) {
      case 'shoulder':
        return 'Hombro';
      case 'bicep':
        return 'Bíceps';
      case 'forearm':
        return 'Antebrazo';
      case 'wrist':
        return 'Muñeca';
      case 'fullArm':
        return 'Brazo completo';
      case 'thigh':
        return 'Muslo';
      case 'calf':
        return 'Pantorrilla';
      case 'ankle':
        return 'Tobillo';
      case 'fullLeg':
        return 'Pierna completa';
      case 'chest':
        return 'Pecho';
      case 'back':
        return 'Espalda';
      case 'ribs':
        return 'Costillas';
      case 'abdomen':
        return 'Abdomen';
      case 'headNeck':
        return 'Cabeza/Cuello';
      case 'hand':
        return 'Mano';
      case 'foot':
        return 'Pie';
      case 'other':
        return 'Otro';
      default:
        return labelKey;
    }
  }
}
