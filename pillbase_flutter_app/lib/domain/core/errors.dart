import 'failures.dart';

class NotAuthenticatedError extends Error {}

class UnexpectedValueError extends Error {
  ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const description =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$description Failure was: $valueFailure');
  }
}
