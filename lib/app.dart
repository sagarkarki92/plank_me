import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/core/service_locator.dart';
import 'package:plank_me/presentation/app/cubit/app_cubit.dart';
import 'package:plank_me/presentation/screens.dart';
import 'package:plank_me/presentation/timer/ui/timer_end_screen.dart';

import 'presentation/app/app_service/app_navigator.dart';

class PlankMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: locator<AppNavigator>().navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: context.read<AppCubit>().isSessionAvailable()
          ? TimerEndScreen()
          : OnBoardingScreen(),
    );
  }
}
