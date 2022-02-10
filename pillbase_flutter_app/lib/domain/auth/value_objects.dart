import 'package:dartz/dartz.dart';
import '../core/failures.dart';
import '../core/value_objects.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const EmailAddress._({required this.value});

  factory EmailAddress(String input) {
    return EmailAddress._(value: right(input));
  }
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const Password._({required this.value});

  factory Password(String input) {
    return Password._(value: right(input));
  }
}
