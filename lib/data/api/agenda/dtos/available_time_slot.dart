import 'package:freezed_annotation/freezed_annotation.dart';

part 'available_time_slot.freezed.dart';
part 'available_time_slot.g.dart';

@freezed
class AvailableTimeSlot with _$AvailableTimeSlot {
  const factory AvailableTimeSlot({
    required DateTime startTime,
    required DateTime endTime,
    double? density,
  }) = _AvailableTimeSlot;

  factory AvailableTimeSlot.fromJson(Map<String, dynamic> json) => _$AvailableTimeSlotFromJson(json);
}

@freezed
class AvailabilityCalendar with _$AvailabilityCalendar {
  const factory AvailabilityCalendar({
    required String date,
    required List<AvailableTimeSlot> slots,
  }) = _AvailabilityCalendar;

  factory AvailabilityCalendar.fromJson(Map<String, dynamic> json) => _$AvailabilityCalendarFromJson(json);
}