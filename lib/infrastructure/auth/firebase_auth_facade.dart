import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:stjohns_conference/domain/auth/auth_failure.dart';
import 'package:stjohns_conference/domain/auth/email_address.dart';
import 'package:stjohns_conference/domain/auth/i_auth_facade.dart';
import 'package:stjohns_conference/domain/auth/password.dart';
import 'package:stjohns_conference/domain/auth/user.dart' as localUser;

import 'firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthFacade(
    this._firebaseAuth,
  );

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressString,
        password: passwordString,
      );
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    } on FirebaseAuthException catch (e) {
      print('Registrations Error: ${e.code}');
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressString,
        password: passwordString,
      );
      if (_firebaseAuth.currentUser != null) {
        final String uid = _firebaseAuth.currentUser!.uid;
        final http.Response response = await http.get(
          Uri.parse('https://api.stjohnsblr.in/v1/conf-user/$uid'),
          headers: {'Content-Type': 'application/json'},
        );
        final res = UserCheckResponse.fromJson(response.body);
        if (res.data != null) {
          if (DateTime.now().difference(res.data!.timeStamp).inSeconds < 5) {
            _firebaseAuth.signOut();
            return left(const AuthFailure.userAlreadySignedIn());
          }
        }
        return right(unit);
      } else {
        _firebaseAuth.signOut();
        return left(const AuthFailure.serverError());
      }
    } on PlatformException catch (e) {
      print('firebase_auth_facade ${e.code}');
      if (e.code == 'ERROR_WRONG_PASSWORD' || e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Option<localUser.User>> getSignedInUser() async {
    return Future.value(optionOf(_firebaseAuth.currentUser?.toDomain()));
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
    print('signOut()');
    return;
  }
}

class UserCheckResponse {
  UserCheckResponse({
    this.data,
    this.errors = const [],
  });

  Data? data;
  List<RestError> errors;

  factory UserCheckResponse.fromJson(String str) => UserCheckResponse.fromMap(json.decode(str) as Map<String, dynamic>);

  factory UserCheckResponse.fromMap(Map<String, dynamic> jsonSource) =>
      UserCheckResponse(data: jsonSource["data"] == null ? null : Data.fromMap(jsonSource["data"] as Map<String, dynamic>));
}

class Data {
  Data({
    required this.uid,
    required this.timeStamp,
  });

  String uid;
  DateTime timeStamp;

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str) as Map<String, dynamic>);

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        uid: json["uid"] == null ? throw 'uid not found' : json["uid"] as String,
        timeStamp: json["timeStamp"] == null ? throw 'timestamp can not be null' : DateTime.fromMillisecondsSinceEpoch(json["timeStamp"] as int),
      );

  Map<String, dynamic> toMap() => {
        "timeStamp": timeStamp.millisecondsSinceEpoch,
        "uid": uid,
      };
}

class RestError {
  RestError({
    this.field,
    this.message,
  });

  String? field;
  String? message;

  factory RestError.fromJson(String str) => RestError.fromMap(json.decode(str) as Map<String, dynamic>);

  String toJson() => json.encode(toMap());

  factory RestError.fromMap(Map<String, dynamic> jsonSource) => RestError(
        field: jsonSource["field"] == null ? null : jsonSource["field"] as String,
        message: jsonSource["message"] == null ? null : jsonSource["message"] as String,
      );

  Map<String, dynamic> toMap() => {
        "field": field,
        "message": message,
      };
}
