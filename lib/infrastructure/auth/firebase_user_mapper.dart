import 'package:firebase_auth/firebase_auth.dart';
import 'package:stjohns_conference/domain/auth/user.dart' as localUser;
import 'package:stjohns_conference/domain/core/value_object.dart';

extension FirebaseUserDomainX on User {
  localUser.User toDomain() {
    return localUser.User(id: UniqueId.fromUniqueString(uid));
  }
}
