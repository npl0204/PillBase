import 'package:dartz/dartz.dart';
import '../core/failures.dart';
import 'value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_objects.dart';

part 'pill.freezed.dart';

@freezed
abstract class Pill implements _$Pill {
  const Pill._();

  const factory Pill(
      {required UniqueId id,
      required PillName pillName,
      required PillNumber pillNumber,
      required PillUnit pillUnit,
      required List<int?> notificationIds,
      required PillNotificationDaysOfWeek daysOfWeek,
      required List<bool> daysOfWeekBool,
      required PillNotificationTimeOfDay timeOfDay,
      required DateTime pillDateTime,
      required UniqueId notifyId,
      required PillCheckItemsList pillCheckItemsList,}) = _Pill;

  factory Pill.empty() => Pill(
        id: UniqueId(),
        pillName: PillName(''),
        pillNumber: PillNumber(''),
        pillUnit: PillUnit(''),
        notificationIds: [],
        timeOfDay: PillNotificationTimeOfDay(DateTime.now()),
        daysOfWeekBool: [true, false, false, false, false, false, false],
        daysOfWeek: PillNotificationDaysOfWeek([1]),
        pillDateTime: DateTime.now(),
        notifyId: UniqueId(),
        pillCheckItemsList: PillCheckItemsList([]),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return pillName.failureOrUnit
        .andThen(pillNumber.failureOrUnit)
        .andThen(pillUnit.failureOrUnit)
        .andThen(daysOfWeek.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
