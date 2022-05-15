import 'package:dartz/dartz.dart';
import '../core/value_objects.dart';
import 'pill_failure.dart';

import 'pill.dart';

abstract class IPillRepository {
  Stream<Either<PillFailure, List<Pill>>> watchAll();

  Future<Either<PillFailure, Unit>> create(Pill pill);
  Future<Either<PillFailure, Unit>> update(Pill pill);
  Future<Either<PillFailure, Unit>> delete(Pill pill);
  Future<Either<PillFailure, Unit>> addUpdateCheckItem(
      {required UniqueId pillId,
      required String dateTime,
      required bool check,
      required UniqueId checkId});
}
