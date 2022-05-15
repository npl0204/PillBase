// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EntryDto _$$_EntryDtoFromJson(Map json) => _$_EntryDto(
      entryName: json['entryName'] as String,
      entryClass: json['entryClass'] as String,
      indication: json['indication'] as String,
      formulation: json['formulation'] as String,
      dose: json['dose'] as String,
      contraindication: json['contraindication'] as String,
      caution: json['caution'] as String,
      sideEffects: json['sideEffects'] as String,
      instructions: json['instructions'] as String,
    );

Map<String, dynamic> _$$_EntryDtoToJson(_$_EntryDto instance) =>
    <String, dynamic>{
      'entryName': instance.entryName,
      'entryClass': instance.entryClass,
      'indication': instance.indication,
      'formulation': instance.formulation,
      'dose': instance.dose,
      'contraindication': instance.contraindication,
      'caution': instance.caution,
      'sideEffects': instance.sideEffects,
      'instructions': instance.instructions,
    };
