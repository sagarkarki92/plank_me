import 'package:flutter/material.dart';
import 'package:plank_me/presentation/timer/ui/widgets/timer_widgets.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ScheduleButton(),
        const SizedBox(width: 12.0),
        FinishButton(),
        const SizedBox(width: 16.0),
      ],
    );
  }
}
