import 'package:dartz/dartz.dart';
import 'entry.dart';
import 'entry_failure.dart';
import '../core/value_objects.dart';

abstract class IDictionaryRepository {
  Stream<Either<EntryFailure, List<Entry>>> watchAll();
  Stream<Either<EntryFailure, List<Entry>>> search(String query);

}
