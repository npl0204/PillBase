import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:pillbase_flutter_app/domain/pills/i_pill_repository.dart';
import 'package:pillbase_flutter_app/infrastructure/pills/pill_repository.dart';

import 'application/auth/bloc/auth_bloc.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'application/pills/pill_actor/pill_actor_bloc.dart';
import 'application/pills/pill_form/pill_form_bloc.dart';
import 'application/pills/pill_watcher/pill_watcher_bloc.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/notifications/i_notifications_repostiory.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/notifications/notifications_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //FEATURES - Pills
  //Application
  sl.registerFactory<PillFormBloc>(
    () => PillFormBloc(
      pillRepository: sl(),
      notificationRepository: sl(),
    ),
  );
  sl.registerFactory<PillWatcherBloc>(
    () => PillWatcherBloc(pillRepository: sl()),
  );
  sl.registerFactory<PillActorBloc>(
    () => PillActorBloc(pillRepository: sl()),
  );

  //Inforstructure
  sl.registerLazySingleton<INotificationRepository>(
      () => NotificationRepository());

  //FEATURES - Auth
  //Application
  sl.registerFactory<SignInFormBloc>(
    () => SignInFormBloc(authFacade: sl()),
  );

  sl.registerFactory<AuthBloc>(
    () => AuthBloc(
      authFacade: sl(),
    ),
  );

  //Inforstructure
  sl.registerLazySingleton<IAuthFacade>(
    () => FirebasaeAuthFacade(
      firebaseAuth: sl(),
    ),
  );

  sl.registerLazySingleton<IPillRepository>(
    () => PillRepository(firestore: sl()),
  );

  //External
  sl.registerLazySingleton<FirebaseAuth>(
    () => FirebaseAuth.instance,
  );

  sl.registerLazySingleton<FirebaseFirestore>(
    () => FirebaseFirestore.instance,
  );
}
