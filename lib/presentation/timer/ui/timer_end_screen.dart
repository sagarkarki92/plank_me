import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/timerend_cubit.dart';

class TimerEndScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TimerendCubit()..init(),
      child: Scaffold(
        body: const TimerendBody(),
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
        newBest: (String username, int timeInSeconds) =>
            _buildNewBestWidget(username, timeInSeconds),
        finish: (String username, int timeInSeconds) =>
            _buildFinishWidget(username, timeInSeconds),
      ),
    );
  }

  Widget _buildFinishWidget(String username, int timeInSeconds) {
    return const Center(
      child: Text('Well done for today'),
    );
  }

  Widget _buildNewBestWidget(String username, int timeInSeconds) {
    return const Center(
      child: Text('Congratulation! New best'),
    );
  }
}
