import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'application/auth/bloc/auth_bloc.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'application/dictionary/dictionary_bloc.dart';
import 'application/notifications/notifications_bloc.dart';
import 'application/pills/pill_actor/pill_actor_bloc.dart';
import 'application/pills/pill_form/pill_form_bloc.dart';
import 'application/pills/pill_watcher/pill_watcher_bloc.dart';
import 'application/pills/pill_worker/pill_worker_bloc.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/dictionary/i_dictionary_repository.dart';
import 'domain/notifications/i_notification_repostiory.dart';
import 'domain/pills/i_pill_repository.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'package:get_it/get_it.dart';

import 'infrastructure/dictionary/dictionary_repository.dart';
import 'infrastructure/notifications/notifications_repository.dart';
import 'infrastructure/pills/pill_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // FEATURES - AUTH
  //Application
  sl.registerFactory<SignInFormBloc>(
    () => SignInFormBloc(
      authFacade: sl(),
    ),
  );

  sl.registerFactory<AuthBloc>(
    () => AuthBloc(
      authFacade: sl(),
      notificationRepository: sl(),
    ),
  );

  //Inforstructure
  sl.registerLazySingleton<IAuthFacade>(
    () => FirebasaeAuthFacade(
      firebaseAuth: sl(),
    ),
  );

  //FEATURES - NOTIFICATIONS
  //Application
  sl.registerFactory<NotificationsBloc>(
    () => NotificationsBloc(notificationRepository: sl()),
  );

  //Inforstructure
  sl.registerLazySingleton<INotificationRepository>(
      () => NotificationRepository());

  //FEATURES - Dictionary
  //Application
  sl.registerFactory<DictionaryBloc>(
    () => DictionaryBloc(
      dictionaryRepository: sl(),
    ),
  );

  // Infrostructure
  sl.registerLazySingleton<IDictionaryRepository>(
    () => DictionaryRepository(
      firestore: sl(),
    ),
  );

  //FEATURES - PILLS
  //Application
  sl.registerFactory<PillWatcherBloc>(
    () => PillWatcherBloc(
      pillRepository: sl(),
      notificationRepository: sl(),
    ),
  );

  sl.registerFactory<PillWorkerBloc>(
    () => PillWorkerBloc(pillRepository: sl()),
  );

  sl.registerFactory<PillActorBloc>(
    () => PillActorBloc(
      pillRepository: sl(),
      notificationRepository: sl(),
    ),
  );

  sl.registerFactory<PillFormBloc>(
    () => PillFormBloc(
      pillRepository: sl(),
      notificationRepository: sl(),
    ),
  );

  // Infrostructure
  sl.registerLazySingleton<IPillRepository>(
    () => PillRepository(
      firestore: sl(),
    ),
  );

  //External
  sl.registerLazySingleton<FirebaseAuth>(
    () => FirebaseAuth.instance,
  );

  sl.registerLazySingleton<FirebaseFirestore>(
    () => FirebaseFirestore.instance,
  );
}
