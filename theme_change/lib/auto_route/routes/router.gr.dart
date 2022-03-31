// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../pages/first.dart' as _i4;
import '../pages/homepage.dart' as _i3;
import '../pages/second.dart' as _i5;
import '../pages/third.dart' as _i6;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.HomePage());
    },
    FirstRoute2.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.FirstPage2());
    },
    SecondRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.SecondPage());
    },
    ThirdRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.ThirdPage());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(FirstRoute2.name, path: '/first'),
        _i1.RouteConfig(SecondRoute.name, path: '/second'),
        _i1.RouteConfig(ThirdRoute.name, path: '/third')
      ];
}

class HomeRoute extends _i1.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class FirstRoute2 extends _i1.PageRouteInfo<void> {
  const FirstRoute2() : super(name, path: '/first');

  static const String name = 'FirstRoute2';
}

class SecondRoute extends _i1.PageRouteInfo<void> {
  const SecondRoute() : super(name, path: '/second');

  static const String name = 'SecondRoute';
}

class ThirdRoute extends _i1.PageRouteInfo<void> {
  const ThirdRoute() : super(name, path: '/third');

  static const String name = 'ThirdRoute';
}
