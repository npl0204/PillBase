// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pill_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PillDto _$$_PillDtoFromJson(Map json) => _$_PillDto(
      pillName: json['pillName'] as String,
      pillNumber: json['pillNumber'] as int,
      pillUnit: json['pillUnit'] as String,
      notificationIds: (json['notificationIds'] as List<dynamic>)
          .map((e) => e as int?)
          .toList(),
      timeOfDay: DateTime.parse(json['timeOfDay'] as String),
      daysOfWeek:
          (json['daysOfWeek'] as List<dynamic>).map((e) => e as int).toList(),
      daysOfWeekBool: (json['daysOfWeekBool'] as List<dynamic>)
          .map((e) => e as bool)
          .toList(),
      pillDateTime: DateTime.parse(json['pillDateTime'] as String),
      notifyId: json['notifyId'] as String,
      pillCheckItemsList: (json['pillCheckItemsList'] as List<dynamic>)
          .map((e) =>
              PillCheckItemDto.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_PillDtoToJson(_$_PillDto instance) =>
    <String, dynamic>{
      'pillName': instance.pillName,
      'pillNumber': instance.pillNumber,
      'pillUnit': instance.pillUnit,
      'notificationIds': instance.notificationIds,
      'timeOfDay': instance.timeOfDay.toIso8601String(),
      'daysOfWeek': instance.daysOfWeek,
      'daysOfWeekBool': instance.daysOfWeekBool,
      'pillDateTime': instance.pillDateTime.toIso8601String(),
      'notifyId': instance.notifyId,
      'pillCheckItemsList':
          instance.pillCheckItemsList.map((e) => e.toJson()).toList(),
    };

_$_PillCheckItemDto _$$_PillCheckItemDtoFromJson(Map json) =>
    _$_PillCheckItemDto(
      id: json['id'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
      check: json['check'] as bool,
    );

Map<String, dynamic> _$$_PillCheckItemDtoToJson(_$_PillCheckItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateTime': instance.dateTime.toIso8601String(),
      'check': instance.check,
    };
