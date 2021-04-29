import 'package:flutter/material.dart';

class NavigationService {
  final _navigatorKey = GlobalKey<NavigatorState>();

  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  BuildContext? get globalContext => navigatorKey.currentContext;
}
