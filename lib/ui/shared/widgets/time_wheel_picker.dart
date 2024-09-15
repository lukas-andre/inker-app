import 'package:flutter/material.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class ImprovedTimeWheelPicker extends StatefulWidget {
  final TimeOfDay initialTime;
  final Function(TimeOfDay) onTimeSelected;

  const ImprovedTimeWheelPicker({
    super.key,
    required this.initialTime,
    required this.onTimeSelected,
  });

  @override
  _ImprovedTimeWheelPickerState createState() =>
      _ImprovedTimeWheelPickerState();
}

class _ImprovedTimeWheelPickerState extends State<ImprovedTimeWheelPicker> {
  late FixedExtentScrollController _hourController;
  late FixedExtentScrollController _minuteController;
  late TimeOfDay _selectedTime;

  @override
  void initState() {
    super.initState();
    _selectedTime = widget.initialTime;
    _hourController =
        FixedExtentScrollController(initialItem: _selectedTime.hour);
    _minuteController =
        FixedExtentScrollController(initialItem: _selectedTime.minute);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double wheelHeight = constraints.maxHeight * 0.7;
        final double labelHeight = constraints.maxHeight * 0.15;
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildWheel(
              label: S.of(context).hour,
              controller: _hourController,
              items: List.generate(
                  24, (index) => index.toString().padLeft(2, '0')),
              onChanged: (value) => _updateSelectedTime(),
              wheelHeight: wheelHeight,
              labelHeight: labelHeight,
            ),
            const SizedBox(width: 20),
            _buildWheel(
              label: S.of(context).minutes,
              controller: _minuteController,
              items: List.generate(
                  60, (index) => index.toString().padLeft(2, '0')),
              onChanged: (value) => _updateSelectedTime(),
              wheelHeight: wheelHeight,
              labelHeight: labelHeight,
            ),
          ],
        );
      },
    );
  }

  Widget _buildWheel({
    required String label,
    required FixedExtentScrollController controller,
    required List<String> items,
    required Function(int) onChanged,
    required double wheelHeight,
    required double labelHeight,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: labelHeight,
          child: Center(
            child: Text(
              label,
              style: TextStyleTheme.copyWith(color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: wheelHeight,
          width: 70,
          child: ListWheelScrollView.useDelegate(
            controller: controller,
            itemExtent: 40,
            perspective: 0.005,
            diameterRatio: 1.2,
            physics: const FixedExtentScrollPhysics(),
            childDelegate: ListWheelChildBuilderDelegate(
              childCount: items.length,
              builder: (context, index) {
                return Center(
                  child: Text(
                    items[index],
                    style: TextStyle(
                      fontSize: 20,
                      color: controller.selectedItem == index
                          ? Colors.blue
                          : Colors.grey,
                    ),
                  ),
                );
              },
            ),
            onSelectedItemChanged: onChanged,
          ),
        ),
      ],
    );
  }

  void _updateSelectedTime() {
    setState(() {
      _selectedTime = TimeOfDay(
        hour: _hourController.selectedItem,
        minute: _minuteController.selectedItem,
      );
    });
    widget.onTimeSelected(_selectedTime);
  }

  @override
  void dispose() {
    _hourController.dispose();
    _minuteController.dispose();
    super.dispose();
  }
}
