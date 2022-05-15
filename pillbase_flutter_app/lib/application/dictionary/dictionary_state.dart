part of 'dictionary_bloc.dart';

@freezed
class DictionaryState with _$DictionaryState {
  const factory DictionaryState.initial() = _Initial;
  const factory DictionaryState.loadInProgress() = _LoadInProgress;
  const factory DictionaryState.loadSuccess(List<Entry> entries) = _LoadSuccess;
  const factory DictionaryState.loadFailure(EntryFailure entrylFailure) =
      _LoadFailure;
}
