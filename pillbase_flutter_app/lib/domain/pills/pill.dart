import 'package:dartz/dartz.dart';
import '../../domain/core/failures.dart';
import '../../domain/pills/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_objects.dart';

part 'pill.freezed.dart';

@freezed
abstract class Pill implements _$Pill {
  const Pill._();

  const factory Pill({
    required UniqueId id,
    required PillName pillName,
    required PillNumber pillNumber,
    required PillUnit pillUnit,
    required PillNotificationTimeOfDay timeOfDay,
  }) = _Pill;

  factory Pill.empty() => Pill(
        id: UniqueId(),
        pillName: PillName(''),
        pillNumber: PillNumber(''),
        pillUnit: PillUnit(''),
        timeOfDay: PillNotificationTimeOfDay(DateTime.now()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return pillName.failureOrUnit
        .andThen(pillUnit.failureOrUnit)
        .andThen(pillNumber.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
