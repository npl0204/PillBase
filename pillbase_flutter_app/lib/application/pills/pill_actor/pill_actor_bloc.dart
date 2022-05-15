import 'package:bloc/bloc.dart';
import '../../../domain/pills/i_pill_repository.dart';
import '../../../domain/pills/pill.dart';
import '../../../domain/pills/pill_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pill_actor_event.dart';
part 'pill_actor_state.dart';
part 'pill_actor_bloc.freezed.dart';

class PillActorBloc extends Bloc<PillActorEvent, PillActorState> {
  final IPillRepository pillRepository;

  PillActorBloc({
    required this.pillRepository,
  }) : super(const PillActorState.initial()) {
    on<PillActorEvent>((event, emit) async {
      await event.map(deleted: (e) async {
        emit(const PillActorState.actionInProgress());
        final possibleFailure = await pillRepository.delete(e.pill);
        possibleFailure.fold((f) => emit(PillActorState.deleteFailure(f)), (r) {
          emit(
            const PillActorState.deleteSuccess(),
          );
        });
      });
    });
  }
}
