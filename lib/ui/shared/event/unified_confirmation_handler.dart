import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/consent/consent_status/consent_status_bloc.dart';
import 'package:inker_studio/domain/blocs/consent/consent_status/consent_status_event.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/domain/services/consent/consent_service.dart';
import 'package:inker_studio/ui/shared/consent/consent_modal.dart';
import 'package:inker_studio/domain/blocs/customer/appointment/appointment_bloc.dart';
import 'package:inker_studio/ui/shared/event/event_action_dialogs.dart' as dialogs;
import 'package:inker_studio/generated/l10n.dart';

Future<void> showUnifiedConfirmDialog({
  required BuildContext context,
  required String eventId,
  required String agendaId,
  required bool canAcceptConsent,
}) async {
  final l10n = S.of(context);

  void showFinalConfirmationDialog() {
    dialogs.EventActionDialogs.showConfirmationDialog(
      context: context,
      title: l10n.confirmEvent,
      content: l10n.confirmEventMessage,
      actionText: l10n.confirm,
      actionColor: Colors.green,
      icon: const Icon(Icons.check_circle, color: Colors.green),
      onConfirm: () {
        context.read<AppointmentBloc>().add(
              AppointmentEvent.confirmAppointment(
                appointmentId: eventId,
                agendaId: agendaId,
              ),
            );
      },
    );
  }

  if (canAcceptConsent) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => BlocProvider(
        create: (context) => ConsentStatusBloc(
          consentService: context.read<ConsentService>(),
          sessionService: context.read<LocalSessionService>(),
        )..add(ConsentStatusEvent.checkStatus(eventId)),
        child: ConsentModal(
          eventId: eventId,
          onAccept: () {
            Navigator.of(dialogContext).pop();
            WidgetsBinding.instance.addPostFrameCallback((_) {
              showFinalConfirmationDialog();
            });
          },
          onCancel: () => Navigator.of(dialogContext).pop(),
        ),
      ),
    );
  } else {
    showFinalConfirmationDialog();
  }
} 