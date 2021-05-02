import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/presentation/timer/plank_timer/timer_cubit.dart';
class ResetButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Text('Reset'),
      onPressed: () {
        context.read<TimerCubit>().resetPlankWatch();
      },
    );
  }
}