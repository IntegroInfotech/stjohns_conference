import 'package:dartz/dartz.dart';
import 'package:stjohns_conference/domain/core/failures.dart';
import 'package:stjohns_conference/domain/core/value_object.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(EmailAddress.validateEmailAddress(input));
  }

  const EmailAddress._(this.value);

  static Either<ValueFailure<String>, String> validateEmailAddress(String input) {
    const emailRegEx = r"""^[a-zA-Z0-9.a-zA-z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9+\.[a-zA-Z]+""";
    if (RegExp(emailRegEx).hasMatch(input)) {
      return right(input);
    } else {
      return left(ValueFailure.invalidEmail(failedValue: input));
    }
  }
}
