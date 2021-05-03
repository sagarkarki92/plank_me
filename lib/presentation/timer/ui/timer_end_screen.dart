import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/presentation/timer/ui/widgets/timer_widgets.dart';

import '../cubit/timerend_cubit.dart';

class TimerEndScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TimerendCubit()..init(),
      child: const Scaffold(
        body: FinishPlankWithNewBest(
          username: 'sagar',
          plankSeconds: 455,
        ),
      ),
    );
  }
}

class TimerendBody extends StatelessWidget {
  const TimerendBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerendCubit, TimerendState>(
      bloc: BlocProvider.of<TimerendCubit>(context),
      builder: (context, state) => state.when(
        initial: () => Container(),
        newBest: (String username, int timeInSeconds) => FinishPlankWithNewBest(
            username: username, plankSeconds: timeInSeconds),
        finish: (String username, int timeInSeconds) =>
            FinishPlanking(username: username, plankSeconds: timeInSeconds),
      ),
    );
  }
}
