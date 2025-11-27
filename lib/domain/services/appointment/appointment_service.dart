import 'package:inker_studio/domain/models/appointment/appointment.dart';
import 'package:inker_studio/domain/models/appointment/appointment_detail_dto.dart';
import 'package:inker_studio/domain/models/appointment/customer_appointments_view.dart';

abstract class AppointmentService {
  /// Retrieves the new customer appointments view
  Future<CustomerAppointmentsView> getCustomerAppointmentsView({
    required String token,
  });

  /// Retrieves a list of customer appointments
  Future<List<Appointment>> getCustomerAppointments({
    required String token,
    String? status,
    int? page,
    int? limit,
  });

  /// Retrieves a specific appointment by ID
  /// If isCustomer is true, it will use the customer endpoint
  Future<AppointmentDetailDto> getAppointmentById({
    required String token,
    required String appointmentId,
    bool isCustomer = false,
  });

  /// Requests a change to an existing appointment
  Future<void> requestAppointmentChange({
    required String token,
    required String appointmentId,
    DateTime? newStartDate,
    DateTime? newEndDate,
    String? reason,
  });

  /// Cancels an appointment
  Future<void> cancelAppointment({
    required String token,
    required String appointmentId,
    required String reason,
  });

  /// Marks an appointment as read
  Future<void> markAppointmentAsRead({
    required String token,
    required String appointmentId,
  });
  
  /// RSVP for an appointment
  Future<void> rsvpForAppointment({
    required String token,
    required String appointmentId,
    required String agendaId,
    required bool willAttend,
  });
}