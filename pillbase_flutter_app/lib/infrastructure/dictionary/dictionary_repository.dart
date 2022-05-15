import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import '../../domain/dictionary/entry.dart';
import '../../domain/dictionary/entry_failure.dart';

import '../../domain/dictionary/i_dictionary_repository.dart';
import '../core/firestore_helpers.dart';
import 'entry_dtos.dart';

class DictionaryRepository implements IDictionaryRepository {
  final FirebaseFirestore firestore;

  const DictionaryRepository({required this.firestore});

  @override
  Stream<Either<EntryFailure, List<Entry>>> watchAll() async* {
    final entryCollection = await firestore.entryCollection();
    try {
      yield* entryCollection
          .orderBy(
            'entryName',
          )
          .snapshots()
          .map(
            (snapshot) => right(
              snapshot.docs
                  .map((doc) => EntryDto.fromFirestore(doc).toDomain())
                  .toList(),
            ),
          );
    } catch (exception) {
      if (exception is PlatformException && exception.message != null) {
        if (exception.message!.contains('permission-denied')) {
          yield left(
            const EntryFailure.insufficientPermission(),
          );
        } else {
          yield left(
            const EntryFailure.unexpected(),
          );
        }
      } else {
        yield left(
          const EntryFailure.unexpected(),
        );
      }
    }
  }

  @override
  Stream<Either<EntryFailure, List<Entry>>> search(String query) async* {
    final entryCollection = await firestore.entryCollection();
    try {
      yield* entryCollection
          .orderBy(
            'entryName',
          )
          .snapshots()
          .map(
            (snapshot) => right(
              snapshot.docs
                  .map((doc) => EntryDto.fromFirestore(doc).toDomain())
                  .toList()
                  .where((element) => element.entryName.contains(query))
                  .toList(),
            ),
          );
    } catch (exception) {
      if (exception is PlatformException && exception.message != null) {
        if (exception.message!.contains('permission-denied')) {
          yield left(
            const EntryFailure.insufficientPermission(),
          );
        } else {
          yield left(
            const EntryFailure.unexpected(),
          );
        }
      } else {
        yield left(
          const EntryFailure.unexpected(),
        );
      }
    }
  }
}
