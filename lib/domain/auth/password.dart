import 'package:dartz/dartz.dart';
import 'package:stjohns_conference/domain/core/failures.dart';
import 'package:stjohns_conference/domain/core/value_object.dart';

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(Password.validatePassword(input));
  }

  const Password._(this.value);

  static Either<ValueFailure<String>, String> validatePassword(String input) {
    if (input.length <= 6) {
      return left(ValueFailure.invalidEmail(failedValue: input));
    } else {
      return right(input);
    }
  }
}
