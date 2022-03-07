import 'package:dartz/dartz.dart';
import 'pill_failure.dart';
import 'pill.dart';

abstract class IPillRepository {
  Stream<Either<PillFailure, List<Pill>>> watchAll();

  Future<Either<PillFailure, Unit>> create(Pill pill);
}
