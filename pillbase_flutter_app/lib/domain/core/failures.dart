import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
  const factory ValueFailure.noName() = NoName<T>;
  const factory ValueFailure.noNumber() = NoNumber<T>;
  const factory ValueFailure.noUnit() = NoUnit<T>;
  const factory ValueFailure.noDayOfWeek() = NoDayOfWeek<T>;
  const factory ValueFailure.noTimeOfDay() = NoTimeOfDay<T>;
}
