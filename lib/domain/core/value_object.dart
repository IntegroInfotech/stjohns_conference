import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:stjohns_conference/domain/core/failures.dart';
import 'package:uuid/uuid.dart';

import 'errors.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  /// Throws [UnExpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnExpectedValueError(f), id);
  }

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValueObject<T> && runtimeType == other.runtimeType && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return 'ValueObject{value: $value}';
  }
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(
      right(
        const Uuid().v1(),
      ),
    );
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(right(uniqueId));
  }

  const UniqueId._(this.value);
}
