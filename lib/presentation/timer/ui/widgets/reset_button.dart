import 'package:flutter/material.dart';
import 'package:plank_me/presentation/timer/cubit/timer_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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