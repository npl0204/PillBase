import 'package:dartz/dartz.dart';

import 'auth_failure.dart';
import 'app_user.dart';
import 'value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Option<AppUser>> getSignedInUser();
  Future<void> signOut();
}
