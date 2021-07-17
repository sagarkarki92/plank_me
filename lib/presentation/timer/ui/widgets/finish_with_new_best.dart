import 'package:flutter/material.dart';
import 'package:plank_me/core/utils/time_utils.dart';
import 'package:plank_me/data/models/user.dart';
import 'package:plank_me/presentation/global_widgets/boy_avatar.dart';
import 'package:plank_me/presentation/global_widgets/girl_avatar.dart';
import 'package:plank_me/presentation/global_widgets/plank_background.dart';
import 'package:plank_me/presentation/timer/ui/widgets/timer_widgets.dart';
import 'package:plank_me/presentation/ui_utils/ui_styles.dart';

class FinishPlankWithNewBest extends StatelessWidget {
  final User user;
  final int? plankSeconds;

  const FinishPlankWithNewBest(
      {Key? key, required this.user, this.plankSeconds})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PlankBackground(
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: user.gender! == 'male'
                ? Hero(
                    tag: 'boyAvatar',
                    child: BoyAvatar.muscleUp(),
                  )
                : const Hero(
                    tag: 'girlAvatar',
                    child: GirlAvatar(),
                  ),
          ),
          Expanded(
            child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New Best! ${user.name!}',
                    style: context.text.headline5!.thin
                        .withColor(AppColors.lightAccent),
                  ),
                  
                ],
              ),
            ),
          Expanded(
            child: ScaleAnimation(
              curve: Curves.elasticInOut,
              child: _LabelText(
                label: '${TimeUtils.toDay(DateTime.now())}:',
                plankTime: TimeUtils.getShowTime(plankSeconds!),
              ),
            ),
          ),
          const Expanded(
            flex: 2,
            child: SlideAnimation(
              start: Offset(0.0, 1.0),
              child: ButtonSection(),
            ),
          ),
        ],
      ),
    );
  }
}

class _LabelText extends StatelessWidget {
  final String label;
  final String plankTime;
  const _LabelText({
    Key? key,
    this.label = '',
    this.plankTime = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: context.theme.primaryColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style:
                context.text.headline6!.thin.withColor(AppColors.lightAccent),
          ),
          const SizedBox(width: 8.0),
          Text(
            plankTime,
            style:
                context.text.headline5!.thin.withColor(AppColors.accent),
          ),
        ],
      ),
    );
  }
}
