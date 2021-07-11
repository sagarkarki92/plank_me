import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/data/models/user.dart';

import '../cubit/timerend_cubit.dart';
import 'widgets/timer_widgets.dart';

class TimerEndScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TimerendCubit()..init(),
      child: const Scaffold(
        body: SafeArea(child: TimerendBody()),
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
        newBestScore: (User user, int timeInSeconds) =>
            FinishPlankWithNewBest(
          user: user,
          plankSeconds: timeInSeconds,
        ),
        ordinaryScore: (User user, int timeInSeconds) => FinishPlanking(
          user:user,
          plankSeconds: timeInSeconds,
        ),
        finish: () => Container(),
      ),
    );
  }
}
