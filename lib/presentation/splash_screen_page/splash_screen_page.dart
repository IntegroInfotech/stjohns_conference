import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stjohns_conference/application/auth/auth_bloc/auth_bloc.dart';
import 'package:stjohns_conference/presentation/routes/router.gr.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            router.popAndPush(const VideoPageRoute());
          },
          unauthenticated: (_) {
            router.popAndPush(const SignInPageRoute());
          },
          userDeleted: (_) {},
        );
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularProgressIndicator(),
              SizedBox(
                height: 15,
              ),
              Text('Splash Screen...'),
            ],
          ),
        ),
      ),
    );
  }
}
