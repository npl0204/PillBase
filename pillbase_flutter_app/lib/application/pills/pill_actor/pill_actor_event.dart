part of 'pill_actor_bloc.dart';

@freezed
class PillActorEvent with _$PillActorEvent {
  const factory PillActorEvent.deleted(Pill pill) = _Deleted;
}