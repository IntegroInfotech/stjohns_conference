import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stjohns_conference/application/auth/auth_bloc/auth_bloc.dart';
import 'package:stjohns_conference/injection.dart';
import 'package:stjohns_conference/presentation/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp.router(
        title: "St. John\'s Conference",
        theme: ThemeData(
          primaryColor: Colors.green[800],
          accentColor: const Color(0xffCEC27A),
          fontFamily: GoogleFonts.koHo().fontFamily,
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            focusColor: const Color(0xffCEC27A),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Color(0xffCEC27A),
                width: 2,
              ),
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              backgroundColor: MaterialStateProperty.all(const Color(0xffCEC27A)),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        routerDelegate: AutoRouterDelegate(_appRouter),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
