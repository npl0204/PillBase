import 'package:freezed_annotation/freezed_annotation.dart';

part 'pill_failure.freezed.dart';

@freezed
abstract class PillFailure with _$PillFailure {
  const factory PillFailure.unexpected() = _Unexpected;
  const factory PillFailure.insufficientPermission() = _InsufficientPermission;
  const factory PillFailure.unableToUpdate() = _UnableToUpdate;
}