import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/core/value_objects.dart';
import '../../../domain/pills/i_pill_repository.dart';
import '../../../domain/pills/pill.dart';
import '../../../domain/pills/pill_check_item.dart';
import '../../../domain/pills/pill_failure.dart';
import '../../../domain/pills/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pill_worker_event.dart';
part 'pill_worker_state.dart';
part 'pill_worker_bloc.freezed.dart';

class PillWorkerBloc extends Bloc<PillWorkerEvent, PillWorkerState> {
  IPillRepository pillRepository;

  PillWorkerBloc({required this.pillRepository})
      : super(PillWorkerState.initial()) {
    on<PillWorkerEvent>(
      (event, emit) async {
        await event.map(
          initialized: (e) {
            emit(state.copyWith(pill: e.pill));
          },
          createdUpdated: (e) async {
            await pillRepository.addUpdateCheckItem(
              pillId: UniqueId.fromUniqueString(e.pillId),
              dateTime: e.dateTime,
             check: e.check,
             checkId: UniqueId.fromUniqueString(e.checkId),
            );
          },
          changed: (e) {
            emit(
              state.copyWith(
                pill: state.pill?.copyWith(
                  pillCheckItemsList: PillCheckItemsList(
                    e.pillCheckItemsList
                        .map((item) => PillCheckItem(
                            id: item.id,
                            dateTime: item.dateTime,
                            check: item.check))
                        .toList(),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
