import 'package:get_it/get_it.dart';

import 'application/pill_for/pill_form_bloc.dart';
import 'domain/pills/i_pill_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {

  //FEATURES - Pills
  //Application
  sl.registerFactory<PillFormBloc>(
    () => PillFormBloc(
      pillRepository: sl(),
    ),
  );
}
