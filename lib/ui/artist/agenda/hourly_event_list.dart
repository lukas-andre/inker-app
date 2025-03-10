import 'package:flutter/material.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/models/agenda_event_details.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:intl/intl.dart';

// Clase auxiliar para organizar información de eventos
class EventInfo {
  final ArtistAgendaEventDetails event;
  final double offset;
  final double height;

  EventInfo({
    required this.event,
    required this.offset,
    required this.height,
  });
}

class HourlyEventList extends StatefulWidget {
  final List<ArtistAgendaEventDetails> events;

  const HourlyEventList({super.key, required this.events});

  @override
  _HourlyEventListState createState() => _HourlyEventListState();
}

class _HourlyEventListState extends State<HourlyEventList> {
  final ScrollController _scrollController = ScrollController();
  double _hourHeight = 80.0;
  double _previousScale = 1.0;
  bool _isZooming = false;

  // Default time range is 24 hours
  int _startHour = 0;
  int _endHour = 24;

  // Current hour indicator offset
  late double _currentTimeOffset;
  late bool _showCurrentTime;

  @override
  void initState() {
    super.initState();

    // Calculate business hours based on events
    _calculateBusinessHours();

    // Setup current time indicator
    final now = DateTime.now();
    _currentTimeOffset = (now.hour + now.minute / 60.0) * _hourHeight;
    _showCurrentTime = true;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToRelevantTime();
    });
  }

  void _calculateBusinessHours() {
    if (widget.events.isEmpty) {
      // Default to 8 AM - 8 PM if no events
      _startHour = 8;
      _endHour = 20;
      return;
    }

    // Find earliest and latest hours from events
    // Usamos una lista para todos los eventos, incluso los que cruzan varias horas
    final List<int> allHours = [];

    for (final event in widget.events) {
      // Añadimos la hora de inicio
      allHours.add(event.startDate.hour);

      // Añadimos la hora de fin
      allHours.add(event.endDate.hour);

      // Para eventos que cruzan múltiples horas, añadimos también las intermedias
      if (event.endDate.hour > event.startDate.hour) {
        for (int h = event.startDate.hour + 1; h < event.endDate.hour; h++) {
          allHours.add(h);
        }
      }
    }

    // Encontramos la hora más temprana y la más tardía
    _startHour = allHours.isEmpty
        ? 8
        : allHours.reduce((min, hour) => hour < min ? hour : min);
    _endHour = allHours.isEmpty
        ? 20
        : allHours.reduce((max, hour) => hour > max ? hour : max) + 1;

    // Aseguramos un rango mínimo de 12 horas
    if (_endHour - _startHour < 12) {
      // Si el rango es menor, extendemos igualmente en ambas direcciones
      final int midPoint = (_startHour + _endHour) ~/ 2;
      _startHour = midPoint - 6;
      _endHour = midPoint + 6;
    }

    // Limitamos al rango de 24 horas
    _startHour = _startHour < 0 ? 0 : _startHour;
    _endHour = _endHour > 24 ? 24 : _endHour;
  }

  void _scrollToRelevantTime() {
    final now = DateTime.now();
    final currentHour = now.hour;

    // If there are events, scroll to the first event
    if (widget.events.isNotEmpty) {
      // Sort events by start time
      final sortedEvents = List<ArtistAgendaEventDetails>.from(widget.events)
        ..sort((a, b) => a.startDate.compareTo(b.startDate));

      final firstEvent = sortedEvents.first;
      final position = (firstEvent.startDate.hour - _startHour) * _hourHeight +
          (firstEvent.startDate.minute / 60.0) * _hourHeight;

      _scrollController.animateTo(
        position - 80, // Scroll to show a bit before the event
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else if (currentHour >= _startHour && currentHour < _endHour) {
      // If no events but we're in business hours, scroll to current time
      final position = (currentHour - _startHour) * _hourHeight +
          (now.minute / 60.0) * _hourHeight;

      _scrollController.animateTo(
        position - 80, // Show some context before current time
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Default to start of business hours
      _scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  // Helper method to get event color based on properties
  Color _getEventColor(ArtistAgendaEventDetails event) {
    // Check if it's a unavailable time by examining title
    if (event.title.toLowerCase().contains('unavailable') ||
        event.title.toLowerCase().contains('blocked')) {
      return Colors.grey.shade700;
    }

    // Regular appointment
    return secondaryColor;
  }

  Widget _buildTimeline(int hour) {
    final displayHour = hour % 12 == 0 ? 12 : hour % 12;
    final amPm = hour < 12 ? 'AM' : 'PM';

    return Container(
      width: 80,
      height: _hourHeight,
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: tertiaryColor.withOpacity(0.3),
            width: 1.0,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: _hourHeight * 0.05),
          Text(
            '$displayHour:00 $amPm',
            style: TextStyleTheme.copyWith(
              color: Colors.white70,
              fontWeight: FontWeight.normal,
              fontSize: 13.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEventCard(
      ArtistAgendaEventDetails event, double top, double height) {
    final eventColor = _getEventColor(event);
    final isDark = eventColor.computeLuminance() < 0.5;
    final textColor = isDark ? Colors.white : Colors.black87;

    // Aumentamos la altura mínima para evitar el overflow
    final minimumHeight = 50.0; // Cambiado de 30.0 a 50.0
    final effectiveHeight = height < minimumHeight ? minimumHeight : height;

    // Añadimos un margen negativo para compensar el posicionamiento
    final effectiveTop = top > 0 ? top : 0;

    return Container(
      margin: EdgeInsets.only(top: effectiveTop.toDouble()),
      padding: const EdgeInsets.only(left: 84.0, right: 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            '/agendaEventDetail',
            arguments: int.parse(event.id),
          );
        },
        child: Container(
          height: effectiveHeight,
          margin: const EdgeInsets.symmetric(vertical: 2.0),
          decoration: BoxDecoration(
            color: eventColor,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: const Offset(1, 2),
                blurRadius: 4.0,
                spreadRadius: 0.5,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Título del evento
                Text(
                  event.title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyleTheme.copyWith(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),
                ),
                const SizedBox(height: 4.0),
                // Horario - Corregimos el overflow usando Row con Flexible
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      color: textColor.withOpacity(0.8),
                      size: 12.0,
                    ),
                    const SizedBox(width: 4.0),
                    Flexible(
                      child: Text(
                        '${DateFormat('h:mm a').format(event.startDate)} - ${DateFormat('h:mm a').format(event.endDate)}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyleTheme.copyWith(
                          color: textColor.withOpacity(0.8),
                          fontWeight: FontWeight.normal,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
                // Descripción (si hay suficiente espacio)
                if (event.description.isNotEmpty && effectiveHeight > 50) ...[
                  const SizedBox(height: 4.0),
                  Expanded(
                    child: Text(
                      event.description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: effectiveHeight > 100 ? 3 : 1,
                      style: TextStyleTheme.copyWith(
                        color: textColor.withOpacity(0.7),
                        fontWeight: FontWeight.normal,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCurrentTimeIndicator(double height) {
    final now = DateTime.now();
    final currentHour = now.hour;

    // Only show if within business hours
    if (!_showCurrentTime ||
        currentHour < _startHour ||
        currentHour >= _endHour) {
      return const SizedBox.shrink();
    }

    // Calculamos la posición correcta basada en la hora actual
    final hourOffset = currentHour - _startHour;
    final minuteOffset = now.minute / 60.0;
    final position = (hourOffset + minuteOffset) * _hourHeight;

    // Este widget se insertará en la posición correcta dentro de la lista
    return Container(
      height: 20, // Altura para el indicador de tiempo
      margin: EdgeInsets.only(top: position - 10), // Centramos la línea
      padding: EdgeInsets.zero,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 4),
            width: 10,
            height: 10,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: Container(
              height: 2,
              margin: const EdgeInsets.only(left: 4, top: 4),
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
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
            _hourHeight = (_previousScale * details.scale).clamp(40.0, 150.0);
          });
        }
      },
      onScaleEnd: (details) {
        _isZooming = false;
      },
      onDoubleTap: () {
        setState(() {
          _hourHeight = 80.0;
        });
      },
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification notification) {
          notification.disallowIndicator();
          return false;
        },
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Calculamos las posiciones de los eventos para cada hora
            final eventsByHour = _organizeEventsByHour();

            return SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  // Indicador de hora actual
                  _buildCurrentTimeIndicator(constraints.maxHeight),

                  // Construimos las horas y dentro de cada hora sus eventos
                  ...[
                    for (int hourIndex = _startHour;
                        hourIndex < _endHour;
                        hourIndex++)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Fila de la hora
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Columna de tiempo
                              _buildTimeline(hourIndex),

                              // Línea divisoria de hora
                              Expanded(
                                child: Container(
                                  height: _hourHeight,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: tertiaryColor.withOpacity(0.3),
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                  // Líneas para marcar cuartos de hora
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: _hourHeight * 0.25,
                                        left: 0,
                                        right: 0,
                                        child: Container(
                                          height: 1.0,
                                          color:
                                              tertiaryColor.withOpacity(0.08),
                                        ),
                                      ),
                                      Positioned(
                                        top: _hourHeight * 0.5,
                                        left: 0,
                                        right: 0,
                                        child: Container(
                                          height: 1.0,
                                          color:
                                              tertiaryColor.withOpacity(0.15),
                                        ),
                                      ),
                                      Positioned(
                                        top: _hourHeight * 0.75,
                                        left: 0,
                                        right: 0,
                                        child: Container(
                                          height: 1.0,
                                          color:
                                              tertiaryColor.withOpacity(0.08),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // Eventos que comienzan en esta hora
                          if (eventsByHour.containsKey(hourIndex))
                            ...eventsByHour[hourIndex]!.map((eventInfo) {
                              return _buildEventCard(
                                eventInfo.event,
                                eventInfo.offset -
                                    _hourHeight, // Ajustamos la posición
                                eventInfo.height,
                              );
                            }).toList(),
                        ],
                      ),
                  ],
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  // Organiza los eventos por hora y calcula sus posiciones
  Map<int, List<EventInfo>> _organizeEventsByHour() {
    final Map<int, List<EventInfo>> eventsByHour = {};

    // Sort events by start time
    final sortedEvents = List<ArtistAgendaEventDetails>.from(widget.events)
      ..sort((a, b) => a.startDate.compareTo(b.startDate));

    for (final event in sortedEvents) {
      // Verificamos si el evento está completamente fuera del rango visible
      if (event.endDate.hour < _startHour || event.startDate.hour >= _endHour) {
        continue;
      }

      // Para eventos que cruzan el límite inferior, ajustamos
      int effectiveStartHour = event.startDate.hour;
      double minuteOffset = event.startDate.minute / 60.0;

      // Si el evento comienza antes del rango visible
      if (effectiveStartHour < _startHour) {
        effectiveStartHour = _startHour;
        minuteOffset = 0; // Comienza al inicio de la primera hora visible
      }

      // Este offset es para posicionar el evento dentro de la hora correcta
      final topOffset = minuteOffset * _hourHeight;

      // Calculate height based on duration
      double height;

      // Si el evento termina en la misma hora
      if (event.endDate.hour == effectiveStartHour) {
        // Calculamos la duración dentro de la misma hora
        int endMinute = event.endDate.minute;
        int startMinute = (effectiveStartHour == event.startDate.hour)
            ? event.startDate.minute
            : 0;
        final durationFraction = (endMinute - startMinute) / 60.0;
        height = durationFraction * _hourHeight;
      }
      // Si el evento se extiende a otra hora
      else {
        // Primero calculamos cuánto tiempo queda en la hora actual
        final minutesInCurrentHour = 60 -
            (effectiveStartHour == event.startDate.hour
                ? event.startDate.minute
                : 0);

        // Luego, calculamos cuántas horas completas abarca el evento
        int fullHours = 0;
        // Si el evento termina después del rango visible
        if (event.endDate.hour > _endHour) {
          fullHours = _endHour - effectiveStartHour - 1;
          height = ((minutesInCurrentHour / 60.0) + fullHours) * _hourHeight;
        } else {
          fullHours = event.endDate.hour - effectiveStartHour - 1;
          final minutesInLastHour = event.endDate.minute;
          height =
              ((minutesInCurrentHour + (fullHours * 60) + minutesInLastHour) /
                      60.0) *
                  _hourHeight;
        }
      }

      // Garantizamos altura mínima para visibilidad
      final minimumHeight = 50.0; // Aumentado de 30.0 a 50.0
      height = height < minimumHeight ? minimumHeight : height;

      // Añadimos el evento a la hora correspondiente
      if (!eventsByHour.containsKey(effectiveStartHour)) {
        eventsByHour[effectiveStartHour] = [];
      }

      eventsByHour[effectiveStartHour]!.add(
        EventInfo(
          event: event,
          offset: topOffset,
          height: height,
        ),
      );
    }

    return eventsByHour;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
