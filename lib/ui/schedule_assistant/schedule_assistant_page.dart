import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/schedule_assistant/schedule_assistant_bloc.dart';
import 'package:inker_studio/domain/services/agenda/agenda_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/keys.dart';
import 'package:inker_studio/ui/schedule_assistant/schedule_assistant_widget.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ScheduleAssistantPage extends StatefulWidget {
  final int artistId;
  final DateTime? tentativeDate;
  final int? tentativeDuration;

  const ScheduleAssistantPage({
    super.key,
    required this.artistId,
    this.tentativeDate,
    this.tentativeDuration,
  });
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

  @override
  void initState() {
    super.initState();
    if (widget.tentativeDate != null && widget.tentativeDuration != null) {
      _selectedStartTime = widget.tentativeDate;
      _selectedEndTime = widget.tentativeDate!
          .add(Duration(minutes: widget.tentativeDuration!));
    }
  }

  Map<String, dynamic> _getResult() {
    final now = DateTime.now();
    final startEventDate =
        _selectedStartTime ?? DateTime(now.year, now.month, now.day, 9, 0);
    final duration = _selectedEndTime != null
        ? _selectedEndTime!.difference(startEventDate).inMinutes
        : 0;

    return {
      'startEventDate': startEventDate,
      'duration': duration,
    };
  }

  void _returnResult() {
    Navigator.of(context).pop(_getResult());
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    return WillPopScope(
      onWillPop: () async {
        _returnResult();
        return false;
      },
      child: BlocProvider(
        create: (context) => ScheduleAssistantBloc(
          agendaService: context.read<AgendaService>(),
          sessionService: context.read<LocalSessionService>(),
        )..add(ScheduleAssistantEvent.started(widget.artistId)),
        child: Scaffold(
          key: K.scheduleAssistantView,
          backgroundColor: primaryColor,
          appBar: AppBar(
            title:
                Text(l10n.scheduleAssistant, style: TextStyleTheme.headline3),
            backgroundColor: primaryColor,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: _returnResult,
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: ScheduleAssistantWidget(
                  artistId: widget.artistId,
                  onTimeRangeSelected: _handleTimeRangeSelected,
                  initialStartTime: _selectedStartTime,
                  initialEndTime: _selectedEndTime,
                ),
              ),
              _buildConfirmButton(l10n),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildConfirmButton(S l10n) {
    return SizedBox(
      key: K.scheduleAssistantConfirmButton,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0, left: 16, right: 16),
        child: ElevatedButton(
          onPressed: () {
            if (_selectedStartTime != null && _selectedEndTime != null) {
              _returnResult();
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(l10n.pleaseSelectTimeRange)),
              );
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: secondaryColor,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            l10n.confirm,
            style: TextStyleTheme.button.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
