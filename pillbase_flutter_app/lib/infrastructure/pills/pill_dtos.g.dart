// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pill_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PillDto _$$_PillDtoFromJson(Map<String, dynamic> json) => _$_PillDto(
      pillName: json['pillName'] as String,
      pillNumber: json['pillNumber'] as int,
      pillUnit: json['pillUnit'] as String,
      timeOfDay: DateTime.parse(json['timeOfDay'] as String),
    );

Map<String, dynamic> _$$_PillDtoToJson(_$_PillDto instance) =>
    <String, dynamic>{
      'pillName': instance.pillName,
      'pillNumber': instance.pillNumber,
      'pillUnit': instance.pillUnit,
      'timeOfDay': instance.timeOfDay.toIso8601String(),
    };
