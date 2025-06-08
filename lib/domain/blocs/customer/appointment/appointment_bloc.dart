import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/appointment/appointment_detail_dto.dart';
import 'package:inker_studio/domain/models/appointment/customer_appointments_view.dart';
import 'package:inker_studio/domain/services/agenda/agenda_service.dart';
import 'package:inker_studio/domain/services/appointment/appointment_service.dart';
import 'package:inker_studio/domain/services/consent/consent_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';

part 'appointment_event.dart';
part 'appointment_state.dart';
part 'appointment_bloc.freezed.dart';

class AppointmentBloc extends Bloc<AppointmentEvent, AppointmentState> {
  final AppointmentService _appointmentService;
  final LocalSessionService _sessionService;
  final AgendaService _agendaService;
  final ConsentService _consentService;

  AppointmentBloc({
    required AppointmentService appointmentService,
    required LocalSessionService sessionService,
    required AgendaService agendaService,
    required ConsentService consentService,
  })  : _appointmentService = appointmentService,
        _sessionService = sessionService,
        _agendaService = agendaService,
        _consentService = consentService,
        super(const AppointmentState.initial()) {
    on<AppointmentEvent>((event, emit) async {
      await event.when(
        started: () => _started(emit),
        loadAppointments: () => _loadAppointments(emit),
        getAppointmentById: (id) => _getAppointmentById(emit, id),
        markAsRead: (appointmentId) => _markAsRead(emit, appointmentId),
        refreshAppointmentDetail: (id) => _refreshAppointmentDetail(emit, id),
        confirmAppointment: (appointmentId, agendaId) =>
            _confirmAppointment(emit, appointmentId, agendaId),
        cancelAppointment: (appointmentId, reason) =>
            _cancelAppointment(emit, appointmentId, reason),
        rejectAppointment: (appointmentId, agendaId, reason) =>
            _rejectAppointment(emit, appointmentId, agendaId, reason),
        reviewAppointment:
            (appointmentId, agendaId, rating, comment, isAnonymous) =>
                _reviewAppointment(emit, appointmentId, agendaId, rating,
                    comment, isAnonymous),
        appealAppointment: (appointmentId, agendaId, reason) =>
            _appealAppointment(emit, appointmentId, agendaId, reason),
      );
    });
  }

  Future<void> _started(Emitter<AppointmentState> emit) async {
    add(const AppointmentEvent.loadAppointments());
  }

  Future<void> _loadAppointments(Emitter<AppointmentState> emit) async {
    emit(const AppointmentState.loading());

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const AppointmentState.error('No active session found'));
        return;
      }

      final view =
          await _appointmentService.getCustomerAppointmentsView(token: token);

      emit(AppointmentState.loaded(appointmentsView: view));
    } catch (e) {
      emit(AppointmentState.error(e.toString()));
    }
  }

  Future<void> _getAppointmentById(
    Emitter<AppointmentState> emit,
    String id,
  ) async {
    final currentState = state;
    if (currentState is _Loaded) {
      // Don't show a full-screen loader, just update the state
    } else {
      emit(const AppointmentState.loading());
    }

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const AppointmentState.error('No active session found'));
        return;
      }

      final appointmentDetail = await _appointmentService.getAppointmentById(
        token: token,
        appointmentId: id,
        isCustomer: true,
      );

      if (currentState is _Loaded) {
        emit(currentState.copyWith(selectedAppointment: appointmentDetail));
      } else {
        // This case is unlikely if getAppointmentById is called from the detail page,
        // which should only be accessed from a loaded list. But as a fallback, load everything.
        final view =
            await _appointmentService.getCustomerAppointmentsView(token: token);
        emit(AppointmentState.loaded(
          appointmentsView: view,
          selectedAppointment: appointmentDetail,
        ));
      }
    } catch (e) {
      emit(AppointmentState.error(e.toString()));
    }
  }

  Future<void> _refreshAppointmentDetail(
    Emitter<AppointmentState> emit,
    String id,
  ) async {
    // This is essentially the same as getAppointmentById
    add(AppointmentEvent.getAppointmentById(id));
  }

  Future<void> _markAsRead(
    Emitter<AppointmentState> emit,
    String appointmentId,
  ) async {
    final currentState = state;
    if (currentState is! _Loaded) return;

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) return;

      await _appointmentService.markAppointmentAsRead(
        token: token,
        appointmentId: appointmentId,
      );

      add(const AppointmentEvent.loadAppointments());
    } catch (e) {
      // Silent fail
    }
  }

  // --- ACTION HANDLERS ---

  Future<void> _confirmAppointment(
    Emitter<AppointmentState> emit,
    String appointmentId,
    String agendaId,
  ) async {
    emit(const AppointmentState.actionInProgress());

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const AppointmentState.actionFailed('No active session found'));
        return;
      }
      
      final consentStatus = await _consentService.checkConsentStatus(appointmentId, token);
      final hasSigned = consentStatus['hasSigned'] as bool? ?? false;

      if (!hasSigned) {
        emit(const AppointmentState.actionFailed('Debes aceptar los términos y condiciones antes de confirmar la cita'));
        return;
      }

      await _agendaService.confirmEvent(
        token: token,
        agendaId: agendaId,
        eventId: appointmentId,
      );

      emit(const AppointmentState.actionSuccess());
      add(AppointmentEvent.refreshAppointmentDetail(appointmentId));
    } catch (e) {
      emit(AppointmentState.actionFailed(e.toString()));
    }
  }

  Future<void> _cancelAppointment(
    Emitter<AppointmentState> emit,
    String appointmentId,
    String reason,
  ) async {
    emit(const AppointmentState.actionInProgress());

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const AppointmentState.actionFailed('No active session found'));
        return;
      }

      await _appointmentService.cancelAppointment(
        token: token,
        appointmentId: appointmentId,
        reason: reason,
      );

      emit(const AppointmentState.actionSuccess());
      add(const AppointmentEvent.loadAppointments()); // Reload list view
    } catch (e) {
      emit(AppointmentState.actionFailed(e.toString()));
    }
  }

  Future<void> _rejectAppointment(
    Emitter<AppointmentState> emit,
    String appointmentId,
    String agendaId,
    String? reason,
  ) async {
    emit(const AppointmentState.actionInProgress());

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const AppointmentState.actionFailed('No active session found'));
        return;
      }

      await _agendaService.rejectEvent(
        token: token,
        agendaId: agendaId,
        eventId: appointmentId,
      );

      emit(const AppointmentState.actionSuccess());
      add(AppointmentEvent.refreshAppointmentDetail(appointmentId));
    } catch (e) {
      emit(AppointmentState.actionFailed(e.toString()));
    }
  }

  Future<void> _reviewAppointment(
    Emitter<AppointmentState> emit,
    String appointmentId,
    String agendaId,
    int rating,
    String comment,
    bool isAnonymous,
  ) async {
    emit(const AppointmentState.actionInProgress());

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const AppointmentState.actionFailed('No active session found'));
        return;
      }

      await _agendaService.reviewEvent(
        token: token,
        agendaId: agendaId,
        eventId: appointmentId,
        rating: rating,
        comment: comment,
        isAnonymous: isAnonymous,
      );

      emit(const AppointmentState.actionSuccess());
      add(AppointmentEvent.refreshAppointmentDetail(appointmentId));
    } catch (e) {
      emit(AppointmentState.actionFailed(e.toString()));
    }
  }

  Future<void> _appealAppointment(
    Emitter<AppointmentState> emit,
    String appointmentId,
    String agendaId,
    String reason,
  ) async {
    emit(const AppointmentState.actionInProgress());
    // This is a placeholder as the backend functionality might not exist
    await Future.delayed(const Duration(seconds: 1));
    emit(const AppointmentState.actionSuccess());
    add(AppointmentEvent.refreshAppointmentDetail(appointmentId));
  }
}