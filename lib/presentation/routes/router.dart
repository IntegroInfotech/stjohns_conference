import 'package:auto_route/annotations.dart';
import 'package:stjohns_conference/presentation/sign_in_page/sign_in_page.dart';
import 'package:stjohns_conference/presentation/splash_screen_page/splash_screen_page.dart';
import 'package:stjohns_conference/presentation/video_page/video_page.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(
      path: '/',
      page: SplashScreenPage,
      initial: true,
      usesPathAsKey: true,
    ),
    AutoRoute(
      path: '/sign-in-page',
      page: SignInPage,
      usesPathAsKey: true,
    ),
    AutoRoute(
      path: '/video-page',
      page: VideoPage,
      usesPathAsKey: true,
    ),
  ],
)
class $AppRouter {}
