// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agenda.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgendaImpl _$$AgendaImplFromJson(Map json) => _$AgendaImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      userId: json['userId'] as String,
      artistId: json['artistId'] as String,
      workingDays: (json['workingDays'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      workingHoursStart: json['workingHoursStart'] as String?,
      workingHoursEnd: json['workingHoursEnd'] as String?,
      public: json['public'] as bool,
      open: json['open'] as bool,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$$AgendaImplToJson(_$AgendaImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'createdAt': instance.createdAt.toIso8601String(),
    'updatedAt': instance.updatedAt.toIso8601String(),
    'userId': instance.userId,
    'artistId': instance.artistId,
    'workingDays': instance.workingDays,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('workingHoursStart', instance.workingHoursStart);
  writeNotNull('workingHoursEnd', instance.workingHoursEnd);
  val['public'] = instance.public;
  val['open'] = instance.open;
  writeNotNull('deletedAt', instance.deletedAt?.toIso8601String());
  return val;
}
