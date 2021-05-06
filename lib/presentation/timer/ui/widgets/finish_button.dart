import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/presentation/timer/cubit/timerend_cubit.dart';

import '../../../screens.dart';

class FinishButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: BlocProvider.of<TimerendCubit>(context),
      listener: (context, state) {
        if (state is Finish) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => PlankRecordScreen(),
            ),
          );
        }
      },
      child: ElevatedButton(
        child: Text('Finish'),
        onPressed: () {
          context.read<TimerendCubit>().finishPlankSession();
        }
      ),
    );
  }
}
