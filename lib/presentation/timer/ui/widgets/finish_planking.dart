import 'package:flutter/material.dart';
import 'package:plank_me/presentation/timer/ui/widgets/timer_widgets.dart';

class FinishPlanking extends StatelessWidget {
  final String? username;
  final int? plankSeconds;

  const FinishPlanking({Key? key, this.username, this.plankSeconds})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize:MainAxisSize.min,
        children: [
          const Text('Well done for today'),
          FinishButton(),
          ScheduleButton(),
        ],
      ),
    );
  }
}
