import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/presentation/global_widgets/boy_avatar.dart';
import 'package:plank_me/presentation/global_widgets/girl_avatar.dart';

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
          ? const Hero(tag: 'boyAvatar', child: BoyAvatar())
          : const Hero(tag: 'Avatar', child: GirlAvatar());

  Widget _buildPlankingImage(BuildContext context) =>
      context.read<TimerCubit>().user.gender == 'male'
          ? const BoyAvatar(
              key: ValueKey('boy_plank'),
              isPlanking: true,
            )
          : const GirlAvatar(
              key: ValueKey('girl_plank'),
              isPlanking: true,
            );
}
