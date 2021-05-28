import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/core/configs.dart';
import 'package:plank_me/core/service_locator.dart';
import 'package:plank_me/presentation/app/cubit/app_cubit.dart';
import 'package:plank_me/presentation/app/ui/main_screen.dart';
import 'package:plank_me/presentation/screens.dart';
import 'package:plank_me/presentation/ui_utils/app_theme.dart';

import 'presentation/app/app_service/app_navigator.dart';

class PlankMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: locator<AppNavigator>().navigatorKey,
      debugShowCheckedModeBanner: false,
      title: AppConfig.appName,
      theme: AppTheme.light(),
      home: context.read<AppCubit>().isSessionAvailable()
          ? _buildHomeScreen(context)
          : OnBoardingScreen(),
    );
  }

  Widget _buildHomeScreen(BuildContext context) {
    return MainScreen();
  }
}
