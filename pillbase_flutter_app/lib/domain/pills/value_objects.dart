import 'package:dartz/dartz.dart';
import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class PillName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const PillName._({required this.value});

  factory PillName(String input) {
    return PillName._(value: validatePillName(input));
  }
}

class PillNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const PillNumber._({required this.value});

  factory PillNumber(String input) {
    return PillNumber._(value: validatePillNumber(input));
  }
}

class PillUnit extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const PillUnit._({required this.value});

  factory PillUnit(String input) {
    return PillUnit._(value: validatePillUnit(input));
  }
}

class PillNotificationTimeOfDay extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  const PillNotificationTimeOfDay._({required this.value});

  factory PillNotificationTimeOfDay(DateTime? input) {
    return PillNotificationTimeOfDay._(value: validatePillNotificationTimeOfDay(input));
  }
}