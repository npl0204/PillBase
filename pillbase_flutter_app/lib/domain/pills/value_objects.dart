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