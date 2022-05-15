import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import '../../domain/dictionary/i_dictionary_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/dictionary/entry.dart';
import '../../domain/dictionary/entry_failure.dart';

part 'dictionary_event.dart';
part 'dictionary_state.dart';
part 'dictionary_bloc.freezed.dart';

class DictionaryBloc extends Bloc<DictionaryEvent, DictionaryState> {
  IDictionaryRepository dictionaryRepository;
  StreamSubscription<Either<EntryFailure, List<Entry?>>>?
      _entryStreamSubscription;

  DictionaryBloc({
    required this.dictionaryRepository,
  }) : super(const DictionaryState.initial()) {
    on<DictionaryEvent>(
      (event, emit) async {
        await event.map(
          watchAllStarted: (e) {
            emit(
              const DictionaryState.loadInProgress(),
            );
            _entryStreamSubscription?.cancel();
            _entryStreamSubscription =
                dictionaryRepository.watchAll().listen((failureOrPill) {
              add(
                $DictionaryEvent.entriesReceived(failureOrPill),
              );
            });
          },
          entriesReceived: (e) {
            e.failureOrEntry.fold(
              (f) => emit(DictionaryState.loadFailure(f)),
              (entries) {
                emit(
                  DictionaryState.loadSuccess(entries),
                );
              },
            );
          },
          search: (e) {
            emit(
              const DictionaryState.loadInProgress(),
            );
            _entryStreamSubscription?.cancel();
            _entryStreamSubscription =
                dictionaryRepository.search(e.query).listen((failureOrPill) {
              add(
                $DictionaryEvent.entriesReceived(failureOrPill),
              );
            });
          },
        );
      },
    );
  }
}
