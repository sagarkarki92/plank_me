import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/presentation/timer/cubit/timer_cubit.dart';
import 'package:plank_me/presentation/timer/ui/widgets/timer_widgets.dart';

class TimerScreen extends StatefulWidget {
  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  late Stopwatch stopwatch;
  late String time = '00';
  late Duration duration;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    stopwatch = Stopwatch();
    duration = _getDuration;
  }

  Duration get _getDuration => const Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TimerCubit(),
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              PlankTimer(),
              Button(),
              ResetButton(),
            ],
          ),
        ),
      ),
    );
  }
}
