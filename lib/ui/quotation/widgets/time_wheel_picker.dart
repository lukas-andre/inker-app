import 'package:flutter/material.dart';

class TimeWheelPicker extends StatefulWidget {
  final TimeOfDay initialTime;
  final Function(TimeOfDay) onTimeSelected;

  const TimeWheelPicker({
    Key? key,
    required this.initialTime,
    required this.onTimeSelected,
  }) : super(key: key);

  @override
  _TimeWheelPickerState createState() => _TimeWheelPickerState();
}

class _TimeWheelPickerState extends State<TimeWheelPicker> {
  late int _selectedHour;
  late int _selectedMinute;

  @override
  void initState() {
    super.initState();
    _selectedHour = widget.initialTime.hour;
    _selectedMinute = widget.initialTime.minute;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildWheel(
            items:
                List.generate(24, (index) => index.toString().padLeft(2, '0')),
            initialItem: _selectedHour,
            onChanged: (value) {
              setState(() {
                _selectedHour = value;
                _updateSelectedTime();
              });
            },
          ),
          const SizedBox(width: 20),
          _buildWheel(
            items:
                List.generate(60, (index) => index.toString().padLeft(2, '0')),
            initialItem: _selectedMinute,
            onChanged: (value) {
              setState(() {
                _selectedMinute = value;
                _updateSelectedTime();
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildWheel({
    required List<String> items,
    required int initialItem,
    required Function(int) onChanged,
  }) {
    return Container(
      width: 70,
      child: ListWheelScrollView.useDelegate(
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
                  color: index == initialItem ? Colors.white : Colors.grey,
                ),
              ),
            );
          },
        ),
        onSelectedItemChanged: onChanged,
      ),
    );
  }

  void _updateSelectedTime() {
    widget.onTimeSelected(
        TimeOfDay(hour: _selectedHour, minute: _selectedMinute));
  }
}
