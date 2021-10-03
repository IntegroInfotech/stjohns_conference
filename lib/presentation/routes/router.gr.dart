// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../sign_in_page/sign_in_page.dart' as _i4;
import '../splash_screen_page/splash_screen_page.dart' as _i3;
import '../video_page/video_page.dart' as _i5;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashScreenPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SplashScreenPage();
        }),
    SignInPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.SignInPage();
        }),
    VideoPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.VideoPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashScreenPageRoute.name,
            path: '/', usesPathAsKey: true),
        _i1.RouteConfig(SignInPageRoute.name,
            path: '/sign-in-page', usesPathAsKey: true),
        _i1.RouteConfig(VideoPageRoute.name,
            path: '/video-page', usesPathAsKey: true)
      ];
}

class SplashScreenPageRoute extends _i1.PageRouteInfo {
  const SplashScreenPageRoute() : super(name, path: '/');

  static const String name = 'SplashScreenPageRoute';
}

class SignInPageRoute extends _i1.PageRouteInfo {
  const SignInPageRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

class VideoPageRoute extends _i1.PageRouteInfo {
  const VideoPageRoute() : super(name, path: '/video-page');

  static const String name = 'VideoPageRoute';
}
