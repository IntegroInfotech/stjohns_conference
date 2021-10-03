part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {



  const factory SignInFormState({
    required Password password,
    required bool isSubmitting,
    required bool showErrorMessages,
    required EmailAddress emailAddress,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        password: Password(''),
        isSubmitting: false,
        showErrorMessages: false,
        emailAddress: EmailAddress(''),
        authFailureOrSuccessOption: none(),
      );
}
