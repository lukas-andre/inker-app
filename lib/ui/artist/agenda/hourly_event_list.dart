import 'package:flutter/material.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/models/agenda_event_details.dart';

class HourlyEventList extends StatefulWidget {
  final List<ArtistAgendaEventDetails> events;

  const HourlyEventList({super.key, required this.events});

  @override
  _HourlyEventListState createState() => _HourlyEventListState();
}

class _HourlyEventListState extends State<HourlyEventList> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToFirstEvent();
    });
  }

  void _scrollToFirstEvent() {
    if (widget.events.isNotEmpty) {
      final firstEvent = widget.events.first;
      final position = firstEvent.startDate.hour * 60.0;
      _scrollController.animateTo(
        position,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      itemCount: 24,
      itemBuilder: (context, index) {
        final hour = index;
        final hourEvents = widget.events.where((event) =>
            event.startDate.hour == hour ||
            (event.startDate.hour < hour && event.endDate.hour > hour));
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
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              ...hourEvents.map((event) {
                final startMinute = event.startDate.minute;
                final durationMinutes =
                    event.endDate.difference(event.startDate).inMinutes;
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
              }),
            ],
          ),
        );
      },
    );
  }
}
