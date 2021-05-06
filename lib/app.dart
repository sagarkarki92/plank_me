import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/core/service_locator.dart';
import 'package:plank_me/presentation/app/cubit/app_cubit.dart';
import 'package:plank_me/presentation/screens.dart';

import 'presentation/app/app_service/app_navigator.dart';

class PlankMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: locator<AppNavigator>().navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Plank Me',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: context.read<AppCubit>().isSessionAvailable()
          ? _buildHomeScreen(context)
          : OnBoardingScreen(),
    );
  }

  Widget _buildHomeScreen(BuildContext context) {
    return FutureBuilder(
        future: context.read<AppCubit>().hasAlreadyPlankedToday(),
        builder: (context, state) {
          if (state.hasData) {
            return state.data! as bool ? PlankRecordScreen() : TimerScreen();
          } else if (state.hasError) {
            return TimerScreen();
          }
          return Container();
        });
  }
}
