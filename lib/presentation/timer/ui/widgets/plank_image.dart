import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../plank_timer/timer_cubit.dart';

class PlankingImage extends StatelessWidget {
  const PlankingImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 800),
      reverseDuration: const Duration(milliseconds: 500),
      switchInCurve: Curves.easeIn,
      switchOutCurve: Curves.easeOut,
      child: context.watch<TimerCubit>().state is Running
          ? _buildPlankingImage(context)
          : _buildStandingImage(context),
    );
  }

  Widget _buildStandingImage(BuildContext context) =>
      context.read<TimerCubit>().user.gender == 'male'
          ? Image.asset(
              'assets/images/boy_stand.png',
              key: const ValueKey('boy_stand'),
            )
          : Image.asset(
              'assets/images/girl_stand.png',
              key: const ValueKey('girl_stand'),
            );

  Widget _buildPlankingImage(BuildContext context) =>
      context.read<TimerCubit>().user.gender == 'male'
          ? Image.asset(
              'assets/images/boy_planking.png',
              key: const ValueKey('boy_plank'),
            )
          : Image.asset(
              'assets/images/girl_planking.png',
              key: const ValueKey('girl_plank'),
            );
}
