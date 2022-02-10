import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

import 'application/auth/bloc/sign_in_form_bloc.dart';
import 'application/pill_for/pill_form_bloc.dart';
import 'domain/auth/i_auth_facade.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //FEATURES - Pills
  //Application
  sl.registerFactory<PillFormBloc>(
    () => PillFormBloc(),
  );

  //FEATURES - Auth
  //Application
  sl.registerFactory<SignInFormBloc>(
    () => SignInFormBloc(authFacade: sl()),
  );

  //Inforstructure
  sl.registerLazySingleton<IAuthFacade>(
    () => FirebasaeAuthFacade(
      firebaseAuth: sl(),
    ),
  );

  //External
  sl.registerLazySingleton<FirebaseAuth>(
    () => FirebaseAuth.instance,
  );
}
