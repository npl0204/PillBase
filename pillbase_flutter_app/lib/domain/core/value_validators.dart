import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePillName(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(const ValueFailure.noName());
  }
}

Either<ValueFailure<String>, String> validatePillNumber(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(const ValueFailure.noNumber());
  }
}

Either<ValueFailure<String>, String> validatePillUnit(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(const ValueFailure.noUnit());
  }
}

Either<ValueFailure<List<int>>, List<int>> validatePillNotificationDaysOfWeek(List<int> input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(const ValueFailure.noDayOfWeek());
  }
}

Either<ValueFailure<DateTime>, DateTime> validatePillNotificationTimeOfDay(DateTime? input) {
  if (input != null) {
    return right(input);
  } else {
    return left(const ValueFailure.noTimeOfDay());
  }
}