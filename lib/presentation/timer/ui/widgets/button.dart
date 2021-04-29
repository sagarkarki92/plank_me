import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/presentation/timer/cubit/timer_cubit.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerCubit, TimerState>(
      builder: (context, state) {
        return state is Initial
            ? ElevatedButton(
                child: const Text("Let's Start"),
                onPressed: () {
                  context.read<TimerCubit>().startPlankWatch();
                },
              )
            : ElevatedButton(
                child: const Text("Stop"),
                onPressed: () {
                  context.read<TimerCubit>().stopPlankWatch();
                },
              );
      },
    );
  }
}
