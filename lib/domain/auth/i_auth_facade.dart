import 'package:dartz/dartz.dart';
import 'package:stjohns_conference/domain/auth/auth_failure.dart';
import 'package:stjohns_conference/domain/auth/user.dart';
import 'package:stjohns_conference/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<void> signOut();
}
