import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import '../../domain/pills/value_objects.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/pills/pill.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pill_dtos.freezed.dart';
part 'pill_dtos.g.dart';

//dto stands for data transfer object

//If you update the PillDto and run build_runner, change the generator file to:
//in fromJson:
//pillDateTime: json['pillDateTime'].toDate(),

@freezed
abstract class PillDto implements _$PillDto {
  const PillDto._();

  const factory PillDto({
    @JsonKey(ignore: true) String? id,
    required String pillName,
    required int pillNumber,
    required String pillUnit,
    required DateTime timeOfDay,
  }) = _PillDto;

  factory PillDto.fromDomain(Pill pill) {
    return PillDto(
      id: pill.id.getOrCrash(),
      pillName: pill.pillName.getOrCrash(),
      pillNumber: int.parse(pill.pillNumber.getOrCrash()),
      pillUnit: pill.pillUnit.getOrCrash(),
      timeOfDay: pill.timeOfDay.getOrCrash(),
    );
  }

  Pill toDomain() {
    return Pill(
      id: UniqueId.fromUniqueString(id as String),
      pillName: PillName(pillName),
      pillNumber: PillNumber(pillNumber.toString()),
      pillUnit: PillUnit(pillUnit),
      timeOfDay: PillNotificationTimeOfDay(timeOfDay),
    );
  }

  factory PillDto.fromJson(Map<String, dynamic> json) =>
      _$PillDtoFromJson(json);

  factory PillDto.fromFirestore(DocumentSnapshot doc) =>
      PillDto.fromJson(doc.data() as Map<String, dynamic>).copyWith(id: doc.id);
}
