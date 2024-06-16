import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:intl/intl.dart';

class TimePickerWithDuration extends StatefulWidget {
  const TimePickerWithDuration({super.key});

  @override
  _TimePickerWithDurationState createState() => _TimePickerWithDurationState();
}

class _TimePickerWithDurationState extends State<TimePickerWithDuration> {
  final TextEditingController _timeController = TextEditingController();
  final List<String> _durations = [
    '30 minutos',
    '1 hora',
    '1 hora 30 minutos',
    '2 horas',
    '2 horas 30 minutos',
    '3 horas',
    '3 horas 30 minutos',
    '4 horas'
  ];
  String _selectedDuration = '1 hora';
  String _timeRange = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 3,
              child: TextFormField(
                controller: _timeController,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  error: null,
                  errorBorder: InputBorder.none,
                  errorText: null,
                  errorStyle: TextStyleTheme.copyWith(
                      color: const Color(0x002a2d40), fontSize: 0),
                  labelText: 'Hora',
                  labelStyle: TextStyleTheme.copyWith(
                      color: Colors.white54, fontSize: 18),
                  border: InputBorder.none,
                  suffixIcon:
                      const Icon(Icons.access_time, color: Colors.white54),
                  filled: true,
                  fillColor: const Color(0x002a2d40),
                ),
                readOnly: false,
                onTap: () async {
                  FocusScope.of(context).requestFocus(FocusNode());
                  final TimeOfDay? picked = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                    builder: (BuildContext context, Widget? child) {
                      return MediaQuery(
                        data: MediaQuery.of(context)
                            .copyWith(alwaysUse24HourFormat: true),
                        child: child!,
                      );
                    },
                  );
                  if (picked != null) {
                    final now = DateTime.now();
                    final dateTime = DateTime(now.year, now.month, now.day,
                        picked.hour, picked.minute);
                    setState(() {
                      _timeController.text =
                          DateFormat('HH:mm').format(dateTime);
                      _updateTimeRange();
                    });
                  }
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid time';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(width: 10),
            Flexible(
              flex: 5,
              child: DropdownButtonFormField<String>(
                value: _selectedDuration,
                dropdownColor: primaryColor,
                decoration: InputDecoration(
                  labelText: 'Duración',
                  labelStyle: TextStyleTheme.copyWith(color: Colors.white54),
                  border: InputBorder.none,
                  filled: true,
                  fillColor: const Color(0x002a2d40),
                ),
                items: _durations.map((String duration) {
                  return DropdownMenuItem<String>(
                    value: duration,
                    child: Text(
                      duration,
                      style: const TextStyle(color: Colors.white),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _selectedDuration = newValue!;
                    _updateTimeRange();
                  });
                },
              ),
            ),
          ],
        ),
        if (_timeRange.isNotEmpty)
          Center(
            child: Text(
              _timeRange,
              style: TextStyleTheme.copyWith(color: Colors.white54),
            ),
          ),
        if (_timeController.text.isEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
            child: Text(
              'Please enter a valid time',
              style: TextStyleTheme.copyWith(color: Colors.red, fontSize: 12),
            ),
          ),
      ],
    );
  }

  void _updateTimeRange() {
    if (_timeController.text.isEmpty) {
      setState(() {
        _timeRange = '';
      });
      return;
    }

    final startTime = DateFormat('HH:mm').parse(_timeController.text);
    final durationInMinutes = _getDurationInMinutes(_selectedDuration);
    final endTime = startTime.add(Duration(minutes: durationInMinutes));
    setState(() {
      _timeRange =
          '${DateFormat('HH:mm').format(startTime)} - ${DateFormat('HH:mm').format(endTime)}';
    });
  }

  int _getDurationInMinutes(String duration) {
    switch (duration) {
      case '30 minutos':
        return 30;
      case '1 hora':
        return 60;
      case '1 hora 30 minutos':
        return 90;
      case '2 horas':
        return 120;
      case '2 horas 30 minutos':
        return 150;
      case '3 horas':
        return 180;
      case '3 horas 30 minutos':
        return 210;
      case '4 horas':
        return 240;
      default:
        return 60;
    }
  }
}
