import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/presentation/timer/plank_timer/timer_cubit.dart';
import '../../../ui_utils/ui_styles.dart';

class PlankTimer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerCubit, TimerState>(
      builder: (context, state) => state.when(
        initial: (String value) => _buildTimerText(value, context),
        running: (String value) => _buildTimerText(value, context),
        stop: (String value, _) => _buildTimerText(value, context),
      ),
    );
  }

  Widget _buildTimerText(String value, BuildContext context) {
    return Text(
      value,
      style: context.text.headline3!.withColor(
        AppColors.lightAccent,
      ),
    );
  }
}
