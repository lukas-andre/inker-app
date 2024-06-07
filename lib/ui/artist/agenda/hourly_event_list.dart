import 'package:flutter/material.dart';

class Event {
  final String title;
  final DateTime startTime;
  final DateTime endTime;

  const Event(this.title, this.startTime, this.endTime);

  @override
  String toString() => title;
}

class HourlyEventList extends StatelessWidget {
  final List<Event> events;

  const HourlyEventList({Key? key, required this.events}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 24,
      itemBuilder: (context, index) {
        final hour = index;
        final hourEvents = events.where((event) =>
            event.startTime.hour == hour ||
            (event.startTime.hour < hour && event.endTime.hour > hour));
        return SizedBox(
          height: 60.0,
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey[300]!,
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '$hour:00',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              ...hourEvents.map((event) {
                final startMinute = event.startTime.minute;
                final durationMinutes =
                    event.endTime.difference(event.startTime).inMinutes;
                return Positioned(
                  top: (startMinute / 60.0) * 60.0,
                  left: 100.0,
                  right: 10.0,
                  height: (durationMinutes / 60.0) * 60.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Center(
                      child: Text(
                        event.title,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ],
          ),
        );
      },
    );
  }
}
