import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/core/service_locator.dart';
import 'package:plank_me/presentation/app/app_service/app_navigator.dart';
import 'package:plank_me/presentation/app/cubit/app_cubit.dart';
import 'package:plank_me/presentation/timer/cubit/timerend_cubit.dart';

import '../../../screens.dart';

class FinishButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: BlocProvider.of<TimerendCubit>(context),
      listener: (context, state) {
        if (state is Finish) {
          locator<AppNavigator>().navigatorKey.currentState!.pushReplacement(
                MaterialPageRoute(
                  builder: (_) => MainScreen(),
                ),
              );
          context.read<AppCubit>().setScreen(1);
        }
      },
      child: ElevatedButton(
          child: const Text('Finish'),
          onPressed: () {
            context.read<TimerendCubit>().finishPlankSession();
          }),
    );
  }
}
