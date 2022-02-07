import 'package:dartz/dartz.dart';
import 'package:pillbase_flutter_app/domain/pills/pill_failure.dart';
import 'pill.dart';

abstract class IPillRepository {
  Stream<Either<PillFailure, List<Pill>>> watchAll();

  Future<Either<PillFailure, Unit>> create(Pill pill);
  Future<Either<PillFailure, Unit>> update(Pill pill);
  Future<Either<PillFailure, Unit>> delete(Pill pill);
}
