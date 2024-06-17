import 'package:flutter/material.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ServiceChips extends StatefulWidget {
  const ServiceChips({super.key});

  @override
  _ServiceChipsState createState() => _ServiceChipsState();
}

class _ServiceChipsState extends State<ServiceChips> {
  final List<String> _services = [
    'Tatuajes',
    'Barbería',
    'Piercings',
    'Maquillaje',
    'Estética',
    'Otros'
  ];
  String _selectedService = 'Tatuajes';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).selectService,
          style: TextStyleTheme.copyWith(color: Colors.white, fontSize: 16),
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: _services.map((service) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: ChoiceChip(
                  label: Text(service),
                  selected: _selectedService == service,
                  onSelected: (selected) {
                    setState(() {
                      _selectedService = service;
                    });
                  },
                  shape: const StadiumBorder(),
                  selectedColor: secondaryColor,
                  backgroundColor: Colors.grey[800],
                  labelStyle: TextStyleTheme.copyWith(
                    fontSize: 12,
                    color: _selectedService == service
                        ? Colors.white
                        : Colors.white54,
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 12.0), // Make the chips more prominent
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
