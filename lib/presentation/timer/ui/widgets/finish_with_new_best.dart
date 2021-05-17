import 'package:flutter/material.dart';
import 'package:plank_me/presentation/timer/ui/widgets/timer_widgets.dart';

class FinishPlankWithNewBest extends StatelessWidget {
  final String? username;
  final int? plankSeconds;

  const FinishPlankWithNewBest({Key? key, this.username, this.plankSeconds})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize:MainAxisSize.min,
        children: [
          const Text('Congratulation! New best'),
          FinishButton(),
          ScheduleButton(),
        ],
      ),
    );
  }
}
