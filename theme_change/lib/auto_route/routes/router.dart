import 'package:auto_route/auto_route.dart';
import 'package:theme_change/auto_route/pages/first.dart';
import 'package:theme_change/auto_route/pages/homepage.dart';
import 'package:theme_change/auto_route/pages/second.dart';
import 'package:theme_change/auto_route/pages/third.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(path: '/', page: HomePage),
  AutoRoute(path: '/first', page: FirstPage2),
  AutoRoute(path: '/second', page: SecondPage),
  AutoRoute(path: '/third', page: ThirdPage)
])
class $AppRouter {}
