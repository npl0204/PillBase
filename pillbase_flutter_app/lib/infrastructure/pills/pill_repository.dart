import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'pill_dtos.dart';

import '../../domain/pills/i_pill_repository.dart';
import '../../domain/pills/pill.dart';
import '../../domain/pills/pill_failure.dart';
import '../core/firestore_helpers.dart';

class PillRepository implements IPillRepository {
  final FirebaseFirestore firestore;

  const PillRepository({required this.firestore});

  @override
  Stream<Either<PillFailure, List<Pill>>> watchAll() async* {
    final userDoc = await firestore.userDocument();
    try {
      yield* userDoc.pillsCollection
          // .orderBy(
          //   'pillDateTime',
          //   descending: true,
          // )
          .snapshots()
          .map(
            (snapshot) => right(
              snapshot.docs
                  .map(
                    (doc) => PillDto.fromFirestore(doc).toDomain(),
                  )
                  .toList(),
            ),
          );
    } catch (exception) {
      if (exception is PlatformException && exception.message != null) {
        if (exception.message!.contains('permission-denied')) {
          yield left(
            const PillFailure.insufficientPermission(),
          );
        } else {
          yield left(
            const PillFailure.unexpected(),
          );
        }
      } else {
        yield left(
          const PillFailure.unexpected(),
        );
      }
    }
  }

   @override
  Future<Either<PillFailure, Unit>> update(Pill pill) async {
    try {
      final userDoc = await firestore.userDocument();
      final pillDto = PillDto.fromDomain(pill);
      await userDoc.pillsCollection.doc(pillDto.pillId).update(pillDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message != null) {
        if (e.message!.contains('permission-denied')) {
          return left(const PillFailure.insufficientPermission());
        } else if (e.message!.contains('not-found')) {
          return left(const PillFailure.unableToUpdate());
        } else {
          return left(const PillFailure.unexpected());
        }
      } else {
        return left(const PillFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<PillFailure, Unit>> create(Pill pill) async {
    try {
      final userDoc = await firestore.userDocument();
      final pillDto = PillDto.fromDomain(pill);

      //we use doc(noteDto.id) because if we use .add(), it will autogenerate id
      //but our noteDto already has an id, so we do that. (if there is no doc with
      // the specified id, firestore creates one)
      await userDoc.pillsCollection.doc(pillDto.pillId).set(pillDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message != null) {
        if (e.message!.contains('permission-denied')) {
          return left(const PillFailure.insufficientPermission());
        } else {
          return left(const PillFailure.unexpected());
        }
      } else {
        return left(const PillFailure.unexpected());
      }
    }
  }

    @override
  Future<Either<PillFailure, Unit>> delete(Pill pill) async {
    try {
      final userDoc = await firestore.userDocument();
      final pillId = pill.id.getOrCrash();
      await userDoc.pillsCollection.doc(pillId).delete();
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message != null) {
        if (e.message!.contains('permission-denied')) {
          return left(const PillFailure.insufficientPermission());
        } else {
          return left(const PillFailure.unexpected());
        }
      } else {
        return left(const PillFailure.unexpected());
      }
    }
  }

}