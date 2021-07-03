import 'package:flutter/material.dart';
import '../../screens.dart';

class AppNavigator {
  final _navigatorKey = GlobalKey<NavigatorState>();

  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  BuildContext? get globalContext => navigatorKey.currentContext;

  void push(String route) {
    navigatorKey.currentState!.pushNamed(route);
  }
}

class Routes {
  static const String setting = '/settings';

  static Route handler(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case setting:
        return MaterialPageRoute(
          builder: (context) => const SettingScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(),
        );
    }
  }
}

class ScreenTransition extends PageTransitionsBuilder {
  final Widget child;
  const ScreenTransition({
    required this.child,
  });

  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return child;
  }
}
