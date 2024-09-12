import 'package:flutter/material.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:intl/intl.dart';

class TimePickerWithDurationV3 extends StatelessWidget {
  final TextEditingController timeController;
  final String selectedDuration;
  final String timeRange;
  final bool showTimeError;
  final bool showDurationError;
  final String? timeErrorText;
  final String? durationErrorText;
  final Function(String) onTimeChanged;
  final Function(String) onDurationChanged;

  const TimePickerWithDurationV3({
    super.key,
    required this.timeController,
    required this.selectedDuration,
    required this.timeRange,
    this.showTimeError = false,
    this.showDurationError = false,
    this.timeErrorText,
    this.durationErrorText,
    required this.onTimeChanged,
    required this.onDurationChanged,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    final List<String> durations = [
      '30 minutos',
      '1 hora',
      '1 hora 30 minutos',
      '2 horas',
      '2 horas 30 minutos',
      '3 horas',
      '3 horas 30 minutos',
      '4 horas'
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 3,
              child: _buildTimePicker(context, l10n),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 5,
              child: _buildDurationDropdown(context, l10n, durations),
            ),
          ],
        ),
        if (showTimeError && timeErrorText != null)
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
            child: Text(
              timeErrorText!,
              style: TextStyleTheme.copyWith(color: Colors.red, fontSize: 12),
            ),
          ),
        if (showDurationError && durationErrorText != null)
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
            child: Text(
              durationErrorText!,
              style: TextStyleTheme.copyWith(color: Colors.red, fontSize: 12),
            ),
          ),
        if (timeRange.isNotEmpty)
          Center(
            child: Text(
              timeRange,
              style: TextStyleTheme.copyWith(color: Colors.white54),
            ),
          ),
      ],
    );
  }

  Widget _buildTimePicker(BuildContext context, S l10n) {
    return TextFormField(
      controller: timeController,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: l10n.hour,
        labelStyle:
            TextStyleTheme.copyWith(color: Colors.white54, fontSize: 18),
        border: InputBorder.none,
        suffixIcon: const Icon(Icons.access_time, color: Colors.white54),
        filled: true,
        fillColor: const Color(0x002a2d40),
        errorStyle: const TextStyle(height: 0),
      ),
      readOnly: true,
      onTap: () async {
        FocusScope.of(context).requestFocus(FocusNode());
        final TimeOfDay? picked = await showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
          builder: (BuildContext context, Widget? child) {
            return MediaQuery(
              data:
                  MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
              child: child!,
            );
          },
        );
        if (picked != null) {
          final now = DateTime.now();
          final dateTime = DateTime(
              now.year, now.month, now.day, picked.hour, picked.minute);
          onTimeChanged(DateFormat('HH:mm').format(dateTime));
        }
      },
    );
  }

  Widget _buildDurationDropdown(
      BuildContext context, S l10n, List<String> durations) {
    return DropdownButtonFormField<String>(
      value: selectedDuration,
      dropdownColor: primaryColor,
      decoration: InputDecoration(
        labelText: l10n.duration,
        labelStyle: TextStyleTheme.copyWith(color: Colors.white54),
        border: InputBorder.none,
        filled: true,
        fillColor: const Color(0x002a2d40),
        errorStyle: const TextStyle(height: 0),
      ),
      items: durations.map((String duration) {
        return DropdownMenuItem<String>(
          value: duration,
          child: Text(
            duration,
            style: const TextStyle(color: Colors.white),
          ),
        );
      }).toList(),
      onChanged: (newValue) {
        if (newValue != null) {
          onDurationChanged(newValue);
        }
      },
    );
  }
}
