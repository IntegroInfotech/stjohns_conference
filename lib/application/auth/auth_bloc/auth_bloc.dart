import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stjohns_conference/domain/auth/i_auth_facade.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const AuthState.initial());

  AuthState get initialState => const AuthState.initial();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(signedOut: (e) async* {
      await _authFacade.signOut();
      print('Signed out');
      yield const AuthState.unauthenticated();
    }, authCheckRequested: (e) async* {
      final userOptions = await _authFacade.getSignedInUser();
      yield userOptions.fold(
        () => const AuthState.unauthenticated(),
        (_) => const AuthState.authenticated(),
      );
    }, checkUserExist: (e) async* {
      Timer.periodic(const Duration(seconds: 1), (timer) async {
        final idToken = await FirebaseAuth.instance.currentUser?.getIdTokenResult(true);
        if (idToken == null) {
          add(const AuthEvent.signedOut());
          timer.cancel();
        }
      });
    });
  }
}
