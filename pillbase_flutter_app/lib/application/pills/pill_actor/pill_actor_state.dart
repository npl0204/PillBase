part of 'pill_actor_bloc.dart';

@freezed
class PillActorState with _$PillActorState {
  const factory PillActorState.initial() = _Initial;
  const factory PillActorState.actionInProgress() = _ActionInProgress;
  const factory PillActorState.deleteFailure(PillFailure pillFailure) =
      _DeleteFailure;
  const factory PillActorState.deleteSuccess() = _DeleteSuccess;
}
