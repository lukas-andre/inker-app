import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/appointment/appointment.dart';
import 'package:inker_studio/domain/models/appointment/appointment_detail_dto.dart';
import 'package:inker_studio/domain/services/appointment/appointment_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/domain/services/agenda/agenda_service.dart';
import 'package:inker_studio/domain/services/consent/consent_service.dart';

part 'appointment_event.dart';
part 'appointment_state.dart';
part 'appointment_bloc.freezed.dart';

class AppointmentBloc extends Bloc<AppointmentEvent, AppointmentState> {
  final AppointmentService _appointmentService;
  final LocalSessionService _sessionService;
  final AgendaService _agendaService;
  final ConsentService _consentService;
  static const int _itemsPerPage = 10;

  AppointmentBloc({
    required AppointmentService appointmentService,
    required LocalSessionService sessionService,
    required AgendaService agendaService,
    required ConsentService consentService,
  }) : _appointmentService = appointmentService,
       _sessionService = sessionService,
       _agendaService = agendaService,
       _consentService = consentService,
       super(const AppointmentState.initial()) {
    on<AppointmentEvent>((event, emit) async {
      await event.when(
        started: () => _started(emit),
        loadAppointments: (status, isRefresh) => _loadAppointments(emit, status, isRefresh),
        loadMoreAppointments: () => _loadMoreAppointments(emit),
        getAppointmentById: (id) => _getAppointmentById(emit, id),
        refreshAppointmentDetail: (id) => _refreshAppointmentDetail(emit, id),
        requestAppointmentChange: (appointmentId, newStartDate, newEndDate, reason) => 
            _requestAppointmentChange(emit, appointmentId, newStartDate, newEndDate, reason),
        cancelAppointment: (appointmentId, reason) => 
            _cancelAppointment(emit, appointmentId, reason),
        markAsRead: (appointmentId) => _markAsRead(emit, appointmentId),
        filterByStatus: (status) => _filterByStatus(emit, status),
        rsvpForAppointment: (appointmentId, agendaId, willAttend) =>
            _rsvpForAppointment(emit, appointmentId, agendaId, willAttend),
        confirmAppointment: (appointmentId, agendaId) =>
            _confirmAppointment(emit, appointmentId, agendaId),
        rejectAppointment: (appointmentId, agendaId, reason) =>
            _rejectAppointment(emit, appointmentId, agendaId, reason),
        reviewAppointment: (appointmentId, agendaId, rating, comment, isAnonymous) =>
            _reviewAppointment(emit, appointmentId, agendaId, rating, comment, isAnonymous),
        appealAppointment: (appointmentId, agendaId, reason) =>
            _appealAppointment(emit, appointmentId, agendaId, reason),
      );
    });
  }

  Future<void> _started(Emitter<AppointmentState> emit) async {
    add(const AppointmentEvent.loadAppointments());
  }

  // Keep track of the current filter across states
  String? _currentTabFilter;

  Future<void> _loadAppointments(
    Emitter<AppointmentState> emit,
    String? status,
    bool isRefresh,
  ) async {
    // Preserve the filter regardless of state transitions
    if (status != null) {
      _currentTabFilter = status;
    }
    
    // Only emit loading if we're not refreshing or if explicitly changing filters
    final currentState = state;
    final stateFilter = currentState is _Loaded ? currentState.currentFilter : null;
    
    if (!isRefresh && stateFilter != status) {
      emit(const AppointmentState.loading());
    }

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(AppointmentState.error(
          'No active session found',
          preservedFilter: _currentTabFilter,
        ));
        return;
      }

      final appointments = await _appointmentService.getCustomerAppointments(
        token: token,
        status: status,
        page: 1,
        limit: _itemsPerPage,
      );

      emit(AppointmentState.loaded(
        appointments: appointments,
        currentPage: 1,
        hasReachedMax: appointments.length < _itemsPerPage,
        currentFilter: status,
      ));
    } catch (e) {
      emit(AppointmentState.error(
        e.toString(),
        preservedFilter: _currentTabFilter,
      ));
    }
  }

  Future<void> _loadMoreAppointments(Emitter<AppointmentState> emit) async {
    final currentState = state;
    if (currentState is! _Loaded) return;
    if (currentState.hasReachedMax || currentState.isLoadingMore) return;

    try {
      emit(currentState.copyWith(isLoadingMore: true));

      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(AppointmentState.loadingMoreFailed(
          appointments: currentState.appointments,
          currentPage: currentState.currentPage,
          totalPages: currentState.totalPages,
          currentFilter: currentState.currentFilter,
          errorMessage: 'No active session found',
        ));
        return;
      }

      final nextPage = currentState.currentPage + 1;
      final appointments = await _appointmentService.getCustomerAppointments(
        token: token,
        status: currentState.currentFilter,
        page: nextPage,
        limit: _itemsPerPage,
      );

      if (appointments.isEmpty) {
        emit(currentState.copyWith(
          hasReachedMax: true,
          isLoadingMore: false,
        ));
      } else {
        emit(currentState.copyWith(
          appointments: [...currentState.appointments, ...appointments],
          currentPage: nextPage,
          hasReachedMax: appointments.length < _itemsPerPage,
          isLoadingMore: false,
        ));
      }
    } catch (e) {
      emit(AppointmentState.loadingMoreFailed(
        appointments: currentState.appointments,
        currentPage: currentState.currentPage,
        totalPages: currentState.totalPages,
        currentFilter: currentState.currentFilter,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _getAppointmentById(
    Emitter<AppointmentState> emit,
    String id,
  ) async {
    final currentState = state;
    if (currentState is _Loaded) {
      // No buscar en la lista, siempre cargar el detalle desde el backend
      emit(currentState.copyWith(selectedAppointment: null));
    }

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        // Use our tracked filter or the current state's filter
        final currentFilter = currentState is _Loaded ? currentState.currentFilter : _currentTabFilter;
        emit(AppointmentState.error(
          'No active session found',
          preservedFilter: currentFilter,
        ));
        return;
      }

      final appointmentDetail = await _appointmentService.getAppointmentById(
        token: token,
        appointmentId: id,
        isCustomer: true, // Set to true since this is for customer appointments
      );

      if (currentState is _Loaded) {
        emit(currentState.copyWith(selectedAppointment: appointmentDetail));
      } else {
        emit(AppointmentState.loaded(
          appointments: [],
          currentPage: 1,
          selectedAppointment: appointmentDetail,
        ));
      }
    } catch (e) {
      // Use our tracked filter or the current state's filter
      final currentFilter = currentState is _Loaded ? currentState.currentFilter : _currentTabFilter;
      emit(AppointmentState.error(
        e.toString(),
        preservedFilter: currentFilter,
      ));
    }
  }

  Future<void> _refreshAppointmentDetail(
    Emitter<AppointmentState> emit,
    String id,
  ) async {
    final currentState = state;
    
    // Set refreshing state while maintaining current data
    if (currentState is _Loaded) {
      emit(currentState.copyWith(isRefreshing: true));
    } else {
      emit(const AppointmentState.loading());
    }

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        final currentFilter = currentState is _Loaded ? currentState.currentFilter : _currentTabFilter;
        if (currentState is _Loaded) {
          emit(currentState.copyWith(isRefreshing: false));
        } else {
          emit(AppointmentState.error(
            'No active session found',
            preservedFilter: currentFilter,
          ));
        }
        return;
      }

      final appointmentDetail = await _appointmentService.getAppointmentById(
        token: token,
        appointmentId: id,
        isCustomer: true,
      );

      if (currentState is _Loaded) {
        emit(currentState.copyWith(
          selectedAppointment: appointmentDetail,
          isRefreshing: false,
        ));
      } else {
        emit(AppointmentState.loaded(
          appointments: [],
          currentPage: 1,
          selectedAppointment: appointmentDetail,
          isRefreshing: false,
        ));
      }
    } catch (e) {
      final currentFilter = currentState is _Loaded ? currentState.currentFilter : _currentTabFilter;
      if (currentState is _Loaded) {
        emit(currentState.copyWith(isRefreshing: false));
      } else {
        emit(AppointmentState.error(
          e.toString(),
          preservedFilter: currentFilter,
        ));
      }
    }
  }

  Future<void> _requestAppointmentChange(
    Emitter<AppointmentState> emit,
    String appointmentId,
    DateTime? newStartDate,
    DateTime? newEndDate,
    String? reason,
  ) async {
    emit(const AppointmentState.actionInProgress());

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const AppointmentState.actionFailed('No active session found'));
        return;
      }

      await _appointmentService.requestAppointmentChange(
        token: token,
        appointmentId: appointmentId,
        newStartDate: newStartDate,
        newEndDate: newEndDate,
        reason: reason,
      );

      emit(const AppointmentState.actionSuccess());
      
      // Reload appointments to reflect changes
      add(const AppointmentEvent.loadAppointments(isRefresh: true));
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
      
      // Reload appointments to reflect changes
      add(const AppointmentEvent.loadAppointments(isRefresh: true));
    } catch (e) {
      emit(AppointmentState.actionFailed(e.toString()));
    }
  }

  Future<void> _markAsRead(
    Emitter<AppointmentState> emit,
    String appointmentId,
  ) async {
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) return;

      await _appointmentService.markAppointmentAsRead(
        token: token,
        appointmentId: appointmentId,
      );

      final currentState = state;
      if (currentState is _Loaded) {
        final updatedAppointments = currentState.appointments.map((appointment) {
          if (appointment.id == appointmentId && appointment.readByCustomer == false) {
            return appointment.copyWith(readByCustomer: true);
          }
          return appointment;
        }).toList();

        emit(currentState.copyWith(appointments: updatedAppointments));
      }
    } catch (e) {
      // Silent fail, don't update UI for this action
    }
  }

  Future<void> _filterByStatus(
    Emitter<AppointmentState> emit,
    String status,
  ) async {
    // Always update our tracked filter immediately
    _currentTabFilter = status;
    
    final currentState = state;
    
    // If we're already filtering by this status, do nothing
    if (currentState is _Loaded && currentState.currentFilter == status) {
      return;
    }
    
    // Immediately emit a state that preserves the selected filter
    // This prevents the UI from jumping back to the default tab
    if (currentState is _Loaded) {
      // Keep the same data but update the filter to prevent tab flickering
      emit(currentState.copyWith(
        isLoadingMore: true, // Show loading indicator
        currentFilter: status, // Immediately update the filter
      ));
    } else {
      // For other states (error, initial), immediately emit a loading state
      emit(const AppointmentState.loading());
    }

    // Continue with loading appointments
    add(AppointmentEvent.loadAppointments(status: status, isRefresh: true));
  }
  
  Future<void> _rsvpForAppointment(
    Emitter<AppointmentState> emit,
    String appointmentId,
    String agendaId,
    bool willAttend,
  ) async {
    emit(const AppointmentState.actionInProgress());

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const AppointmentState.actionFailed('No active session found'));
        return;
      }

      await _appointmentService.rsvpForAppointment(
        token: token,
        appointmentId: appointmentId,
        agendaId: agendaId,
        willAttend: willAttend,
      );

      emit(const AppointmentState.actionSuccess());
      
      // Reload appointments to reflect changes
      add(const AppointmentEvent.loadAppointments(isRefresh: true));
    } catch (e) {
      emit(AppointmentState.actionFailed(e.toString()));
    }
  }

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

      // Check if consent is required and has been signed
      final consentStatus = await _consentService.checkConsentStatus(appointmentId, token);
      final hasSigned = consentStatus['hasSigned'] as bool? ?? false;

      if (!hasSigned) {
        emit(const AppointmentState.actionFailed('You must accept the terms and conditions before confirming the appointment'));
        return;
      }

      await _agendaService.confirmEvent(
        token: token,
        agendaId: agendaId,
        eventId: appointmentId,
      );

      emit(const AppointmentState.actionSuccess());
      
      // Reload appointment detail
      add(AppointmentEvent.refreshAppointmentDetail(appointmentId));
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
      
      // Reload appointment detail
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
      
      // Reload appointment detail
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

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const AppointmentState.actionFailed('No active session found'));
        return;
      }

      // TODO: Implement appeal endpoint when available
      // For now, just show success message
      await Future.delayed(const Duration(seconds: 1));

      emit(const AppointmentState.actionSuccess());
    } catch (e) {
      emit(AppointmentState.actionFailed(e.toString()));
    }
  }
}