import 'package:freezed_annotation/freezed_annotation.dart';

part 'agenda.freezed.dart';
part 'agenda.g.dart';

@freezed
class Agenda with _$Agenda {
  const factory Agenda({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String userId,
    required String artistId,
    required List<String> workingDays,
    String? workingHoursStart,
    String? workingHoursEnd,
    required bool public,
    required bool open,
    DateTime? deletedAt,
  }) = _Agenda;

  factory Agenda.fromJson(Map<String, dynamic> json) => _$AgendaFromJson(json);
} 