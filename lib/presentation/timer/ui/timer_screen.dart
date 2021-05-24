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
      child: const SafeArea(
        child: Scaffold(
          body: TimerScreenBody(),
        ),
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
            flex: 6,
            child: UiSection(),
          ),
          Expanded(
            flex: 4,
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hey ${context.read<MyplankCubit>().userName},',
          style: context.text.headline4!.bold,
        ),
      ],
    );
  }
}

class TimerSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Material(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(24.0),
        elevation: 24.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                text: 'Time to beat ',
                style: context.text.bodyText1!.thin.white,
                children: <TextSpan>[
                  TextSpan(
                    text: context.watch<MyplankCubit>().personBest,
                    style: context.text.headline5!.white,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            PlankTimer(),
            const SizedBox(height: 8.0),
            Button(),
          ],
        ),
      ),
    );
  }
}
