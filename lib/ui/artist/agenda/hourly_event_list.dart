import 'package:flutter/material.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/models/agenda_event_details.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class HourlyEventList extends StatefulWidget {
  final List<ArtistAgendaEventDetails> events;

  const HourlyEventList({super.key, required this.events});

  @override
  _HourlyEventListState createState() => _HourlyEventListState();
}

class _HourlyEventListState extends State<HourlyEventList> {
  final ScrollController _scrollController = ScrollController();
  double _hourHeight = 60.0;
  double _previousScale = 1.0;
  bool _isZooming = false;

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
      final position = firstEvent.startDate.hour * _hourHeight;
      _scrollController.animateTo(
        position,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _resetZoom() {
    setState(() {
      _hourHeight = 60.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onScaleStart: (details) {
        if (details.pointerCount == 2) {
          _isZooming = true;
          _previousScale = _hourHeight;
        }
      },
      onScaleUpdate: (details) {
        if (_isZooming) {
          setState(() {
            _hourHeight = (_previousScale * details.scale).clamp(30.0, 120.0);
          });
        }
      },
      onScaleEnd: (details) {
        _isZooming = false;
      },
      onDoubleTap: () {
        setState(() {
          _hourHeight = 60.0;
        });
      },
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification notification) {
          notification.disallowIndicator();
          return false;
        },
        child: ListView.builder(
          controller: _scrollController,
          itemCount: 24,
          itemBuilder: (context, index) {
            final hour = index;
            final hourEvents = widget.events.where((event) =>
                event.startDate.hour == hour ||
                (event.startDate.hour < hour && event.endDate.hour > hour));
            return GestureDetector(
              onDoubleTap: hourEvents.isEmpty
                  ? () {
                      setState(() {
                        _hourHeight = 60.0;
                      });
                    }
                  : null,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                curve: Curves.easeInOut,
                height: _hourHeight,
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
                          padding: const EdgeInsets.only(left: 10.0, top: 18),
                          child: Text('$hour:00',
                              style: TextStyleTheme.copyWith(
                                color: Colors.grey[500],
                                fontWeight: FontWeight.normal,
                                fontSize: 14.0,
                              )),
                        ),
                      ),
                    ),
                    ...hourEvents.map((event) {
                      final startMinute = event.startDate.minute;
                      final durationMinutes =
                          event.endDate.difference(event.startDate).inMinutes;
                      return Positioned(
                        top: (startMinute / 60.0) * _hourHeight,
                        left: 100.0,
                        right: 10.0,
                        height: (durationMinutes / 60.0) * _hourHeight,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(4.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 2),
                                blurRadius: 4.0,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              event.title,
                              style: TextStyleTheme.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
