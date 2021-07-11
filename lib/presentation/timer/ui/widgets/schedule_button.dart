import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/presentation/timer/cubit/timerend_cubit.dart';

class ScheduleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Text('Schedule Plank'),
      onPressed: () {
        _openTimeScheduler(context);
      },
    );
  }

  Future<void> _openTimeScheduler(BuildContext context) async {
    final selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      BlocProvider.of<TimerendCubit>(context, listen: false)
          .setScheduledTime(selectedTime.hour, selectedTime.minute);
    }
  }
}
