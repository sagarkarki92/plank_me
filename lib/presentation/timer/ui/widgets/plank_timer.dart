import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/presentation/timer/plank_timer/timer_cubit.dart';

class PlankTimer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener(
        bloc: BlocProvider.of<TimerCubit>(context),
        listener: (context, state) {
          if (state is Stop) {
            showDialog(
              context: context,
              builder: (_) => Dialog(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('You did ${state.completedTime}'),
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
              )),
            );
          }
        },
        child: BlocBuilder<TimerCubit, TimerState>(
          builder: (context, state) => state.when(
            initial: (String value) => _buildTimerText(value, context),
            running: (String value) => _buildTimerText(value, context),
            stop: (String value, _) => _buildTimerText(value, context),
          ),
        ));
  }

  Widget _buildTimerText(String value, BuildContext context) {
    return Text(value, style: Theme.of(context).textTheme.headline3);
  }
}
