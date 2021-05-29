import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/presentation/timer/plank_timer/timer_cubit.dart';
import 'package:plank_me/presentation/ui_utils/colors.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<TimerCubit, TimerState>(
      listener: (context, state) {
        state.maybeWhen(
            stop: (timerValue, completedTime) => showDialog(
                  context: context,
                  builder: (_) => _TimerDialog(
                    timerValue: timerValue,
                    completedTime: completedTime,
                  ),
                ),
            orElse: () {});
      },
      child: BlocBuilder<TimerCubit, TimerState>(
        builder: (context, state) {
          return state is Initial
              ? ElevatedButton(
                  child: const Text("Let's Start"),
                  onPressed: () {
                    context.read<TimerCubit>().startPlankWatch();
                  },
                )
              : ElevatedButton(
                  child: const Text("Never Stop"),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(AppColors.error),
                  ),
                  onPressed: () {
                    context.read<TimerCubit>().stopPlankWatch();
                  },
                );
        },
      ),
    );
  }
}

class _TimerDialog extends StatelessWidget {
  final String timerValue;
  final String completedTime;

  const _TimerDialog({
    Key? key,
    required this.timerValue,
    required this.completedTime,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('You did $completedTime'),
          ElevatedButton(
              child: const Text('Done for today'),
              onPressed: () {
                context.read<TimerCubit>().donePlanking();
                Navigator.pop(context);
              }),
          TextButton(
            onPressed: () {
              context.read<TimerCubit>().resetPlankWatch();
              Navigator.of(context).pop();
            },
            child: const Text('Reset'),
          )
        ],
      ),
    );
  }
}
