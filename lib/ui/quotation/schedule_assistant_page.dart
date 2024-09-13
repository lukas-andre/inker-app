import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/schedule_assistant/schedule_assistant_bloc.dart';
import 'package:inker_studio/domain/services/agenda/agenda_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/quotation/widgets/schedule_assistant_widget.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ScheduleAssistantPage extends StatefulWidget {
  final int artistId;

  const ScheduleAssistantPage({super.key, required this.artistId});

  @override
  _ScheduleAssistantPageState createState() => _ScheduleAssistantPageState();
}

class _ScheduleAssistantPageState extends State<ScheduleAssistantPage> {
  DateTime? _selectedStartTime;
  DateTime? _selectedEndTime;

  void _handleTimeRangeSelected(DateTime startTime, DateTime endTime) {
    setState(() {
      _selectedStartTime = startTime;
      _selectedEndTime = endTime;
    });
  }

  void _returnResult() {
    final now = DateTime.now();
    final startEventDate =
        _selectedStartTime ?? DateTime(now.year, now.month, now.day, 9, 0);
    final duration = _selectedEndTime != null
        ? _selectedEndTime!.difference(startEventDate).inMinutes
        : 0;

    Navigator.of(context).pop({
      'startEventDate': startEventDate,
      'duration': duration,
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    return BlocProvider(
      create: (context) => ScheduleAssistantBloc(
        agendaService: context.read<AgendaService>(),
        sessionService: context.read<LocalSessionService>(),
      )..add(ScheduleAssistantEvent.started(widget.artistId)),
      child: Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          title: Text(l10n.scheduleAssistant, style: TextStyleTheme.headline3),
          backgroundColor: primaryColor,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: _returnResult,
          ),
          actions: [
            TextButton(
              onPressed: _returnResult,
              child: Text(
                l10n.accept,
                style: TextStyleTheme.button.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
        body: ScheduleAssistantWidget(
          artistId: widget.artistId,
          onTimeRangeSelected: _handleTimeRangeSelected,
          initialStartTime: _selectedStartTime,
          initialEndTime: _selectedEndTime,
        ),
      ),
    );
  }
}
