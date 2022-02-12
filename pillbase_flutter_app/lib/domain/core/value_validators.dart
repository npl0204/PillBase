import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validatePillName(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(const ValueFailure.noName());
  }
}