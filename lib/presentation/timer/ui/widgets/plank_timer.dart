import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/presentation/timer/cubit/timer_cubit.dart';

class PlankTimer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerCubit, TimerState>(
      builder: (context, state) => state.when(
        initial: (String value) => _buildTimerText(value),
        running: (String value) => _buildTimerText(value),
        stop: (String value) => _buildTimerText(value),
      ),
    );
  }

  Widget _buildTimerText(String value) {
    return Text(value);
  }
}
