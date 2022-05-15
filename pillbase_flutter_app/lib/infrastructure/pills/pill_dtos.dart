import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/pills/pill_check_item.dart';
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
    required List<int?> notificationIds,
    required DateTime timeOfDay,
    required List<int> daysOfWeek,
    required List<bool> daysOfWeekBool,
    required DateTime pillDateTime,
    required String notifyId,
    required List<PillCheckItemDto> pillCheckItemsList,
  }) = _PillDto;

  factory PillDto.fromDomain(Pill pill) {
    return PillDto(
      id: pill.id.getOrCrash(),
      pillName: pill.pillName.getOrCrash(),
      pillNumber: int.parse(pill.pillNumber.getOrCrash()),
      pillUnit: pill.pillUnit.getOrCrash(),
      notificationIds: pill.notificationIds,
      timeOfDay: pill.timeOfDay.getOrCrash(),
      daysOfWeek: pill.daysOfWeek.getOrCrash(),
      daysOfWeekBool: pill.daysOfWeekBool,
      pillDateTime: pill.pillDateTime,
      notifyId: pill.notifyId.getOrCrash(),
      pillCheckItemsList: pill.pillCheckItemsList
          .getOrCrash()
          .map(
            (pillCheckItem) => PillCheckItemDto.fromDomain(pillCheckItem),
          )
          .toList(),
    );
  }

  Pill toDomain() {
    return Pill(
      id: UniqueId.fromUniqueString(id as String),
      pillName: PillName(pillName),
      pillNumber: PillNumber(pillNumber.toString()),
      pillUnit: PillUnit(pillUnit),
      notificationIds: notificationIds,
      daysOfWeek: PillNotificationDaysOfWeek(daysOfWeek),
      daysOfWeekBool: daysOfWeekBool,
      timeOfDay: PillNotificationTimeOfDay(timeOfDay),
      pillDateTime: pillDateTime,
      notifyId: UniqueId.fromUniqueString(notifyId),
      pillCheckItemsList: PillCheckItemsList(
        pillCheckItemsList
            .map((pillCheckItemDto) => pillCheckItemDto.toDomain())
            .toList(),
      ),
    );
  }

  factory PillDto.fromJson(Map<String, dynamic> json) =>
      _$PillDtoFromJson(json);

  factory PillDto.fromFirestore(DocumentSnapshot doc) =>
      PillDto.fromJson(doc.data() as Map<String, dynamic>).copyWith(id: doc.id);
}

@freezed
abstract class PillCheckItemDto implements _$PillCheckItemDto {
  const PillCheckItemDto._();

  const factory PillCheckItemDto(
      {required String id,
      required DateTime dateTime,
      required bool check}) = _PillCheckItemDto;

  factory PillCheckItemDto.fromDomain(PillCheckItem pillCheckItem) {
    return PillCheckItemDto(
      id: pillCheckItem.id.getOrCrash(),
      dateTime: pillCheckItem.dateTime,
      check: pillCheckItem.check,
    );
  }

  PillCheckItem toDomain() {
    return PillCheckItem(
      id: UniqueId.fromUniqueString(id),
      check: check,
      dateTime: dateTime,
    );
  }

  factory PillCheckItemDto.fromJson(Map<String, dynamic> json) =>
      _$PillCheckItemDtoFromJson(json);
}
