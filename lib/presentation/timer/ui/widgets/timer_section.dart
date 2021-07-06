import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/presentation/timer/myplank_cubit/myplank_cubit.dart';
import 'package:plank_me/presentation/timer/ui/widgets/timer_widgets.dart';
import '../../../ui_utils/ui_styles.dart';

class TimerSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Material(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(24.0),
        elevation: 100.0,
        shadowColor: AppColors.primary,
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
