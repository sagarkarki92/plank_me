import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/configs.dart';
import 'core/service_locator.dart';
import 'presentation/app/app_service/app_navigator.dart';
import 'presentation/app/cubit/app_cubit.dart';
import 'presentation/app/ui/main_screen.dart';
import 'presentation/screens.dart';
import 'presentation/ui_utils/app_theme.dart';

class PlankMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: locator<AppNavigator>().navigatorKey,
      debugShowCheckedModeBanner: false,
      title: AppConfig.appName,
      theme: AppTheme.light(),
      onGenerateRoute: Routes.handler,
      home: context.read<AppCubit>().isSessionAvailable()
          ? _buildHomeScreen(context)
          : OnBoardingScreen(),
    );
  }

  Widget _buildHomeScreen(BuildContext context) {
    context.read<AppCubit>().hasAlreadyPlankedToday();
    return MainScreen();
  }
}
