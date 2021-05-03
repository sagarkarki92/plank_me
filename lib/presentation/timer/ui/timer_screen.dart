import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/core/service_locator.dart';
import 'package:plank_me/presentation/timer/myplank_cubit/myplank_cubit.dart';
import 'package:plank_me/presentation/timer/plank_timer/timer_cubit.dart';
import 'package:plank_me/presentation/timer/ui/widgets/timer_widgets.dart';
import 'package:plank_me/repositories/planktime_repository.dart';
import 'package:plank_me/repositories/user_repository.dart';

import 'timer_end_screen.dart';

class TimerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => MyplankCubit()..init()),
        BlocProvider(
          create: (context) => TimerCubit(
            context.read<MyplankCubit>(),
          ),
        ),
      ],
      child: const Scaffold(
        body: TimerScreenBody(),
      ),
    );
  }
}

class TimerScreenBody extends StatelessWidget {
  const TimerScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: BlocProvider.of<MyplankCubit>(context),
      listener: (context, state) {
        if (state is Success) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => TimerEndScreen(),
            ),
          );
        }
      },
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Hello ${context.read<MyplankCubit>().userName}'),
            const SizedBox(height: 8.0),
            Text(
                'Time to beat ${context.watch<MyplankCubit>().personBest.toString()}'),
            const SizedBox(height: 8.0),
            PlankTimer(),
            Button(),
          ],
        ),
      ),
    );
  }
}
