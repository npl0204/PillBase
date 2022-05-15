part of 'dictionary_bloc.dart';

@freezed
class DictionaryEvent with _$DictionaryEvent {
  const factory DictionaryEvent.watchAllStarted() = _WatchAllStarted;
  const factory DictionaryEvent.entriesReceived(
      Either<EntryFailure, List<Entry>> failureOrEntry) = _EntriesReceived;
  const factory DictionaryEvent.search(String query) = _EntriesSearched;
}
