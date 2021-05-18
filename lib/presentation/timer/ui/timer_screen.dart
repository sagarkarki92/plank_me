import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/presentation/timer/myplank_cubit/myplank_cubit.dart';
import 'package:plank_me/presentation/timer/plank_timer/timer_cubit.dart';
import 'package:plank_me/presentation/timer/ui/widgets/timer_widgets.dart';
import '../../ui_utils/ui_styles.dart';
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
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => TimerEndScreen(),
            ),
          );
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: UiSection(),
          ),
          Expanded(
            flex: 3,
            child: TimerSection(),
          )
        ],
      ),
    );
  }
}

class UiSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello ${context.read<MyplankCubit>().userName}',
        style:
            context.text.headline4!.bold.withColor(context.theme.primaryColor),
      ),
    );
  }
}

class TimerSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColorDark,
      child: Column(
        children: [
          Text('Time to beat ${context.watch<MyplankCubit>().personBest}'),
          const SizedBox(height: 8.0),
          PlankTimer(),
          const SizedBox(height: 8.0),
          Button(),
        ],
      ),
    );
  }
}
