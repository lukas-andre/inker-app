import 'package:freezed_annotation/freezed_annotation.dart';

part 'agenda_settings.freezed.dart';

@freezed
class AgendaSettings with _$AgendaSettings {
  const factory AgendaSettings({
    required String workingHoursStart,
    required String workingHoursEnd,
    required List<String> workingDays,
    required bool isPublic,
    required bool isOpen,
  }) = _AgendaSettings;
}

@freezed
class UnavailableTimeBlock with _$UnavailableTimeBlock {
  const factory UnavailableTimeBlock({
    required int id,
    required DateTime startDate,
    required DateTime endDate,
    String? reason,
  }) = _UnavailableTimeBlock;
  
  // Factory constructor to safely create from dynamic JSON
  static UnavailableTimeBlock fromDynamic(dynamic json) {
    if (json == null || json is! Map<String, dynamic>) {
      // Return a placeholder block if input is invalid
      return UnavailableTimeBlock(
        id: -1,
        startDate: DateTime.now(),
        endDate: DateTime.now().add(const Duration(hours: 1)),
        reason: 'Invalid data',
      );
    }
    
    try {
      final id = json['id'] is int ? json['id'] : -1;
      
      // Parse dates safely
      DateTime startDate;
      try {
        startDate = json['startDate'] is String 
          ? DateTime.parse(json['startDate']) 
          : DateTime.now();
      } catch (_) {
        startDate = DateTime.now();
      }
      
      DateTime endDate;
      try {
        endDate = json['endDate'] is String 
          ? DateTime.parse(json['endDate']) 
          : DateTime.now().add(const Duration(hours: 1));
      } catch (_) {
        endDate = DateTime.now().add(const Duration(hours: 1));
      }
      
      final reason = json['reason'] is String ? json['reason'] : null;
      
      return UnavailableTimeBlock(
        id: id,
        startDate: startDate,
        endDate: endDate,
        reason: reason,
      );
    } catch (e) {
      // Return a placeholder on any error
      return UnavailableTimeBlock(
        id: -1,
        startDate: DateTime.now(),
        endDate: DateTime.now().add(const Duration(hours: 1)),
        reason: 'Error parsing data',
      );
    }
  }
}

@freezed
class TimeSlot with _$TimeSlot {
  const factory TimeSlot({
    required DateTime startTime,
    required DateTime endTime,
    double? density,
  }) = _TimeSlot;
}

@freezed
class AvailabilityDay with _$AvailabilityDay {
  const factory AvailabilityDay({
    required String date,
    required List<TimeSlot> slots,
  }) = _AvailabilityDay;
}