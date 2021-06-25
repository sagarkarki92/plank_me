import 'package:flutter/material.dart';
import 'package:plank_me/core/utils/time_utils.dart';
import 'package:plank_me/presentation/plank_records/cubit/plankrecord_cubit.dart';
import 'package:plank_me/presentation/ui_utils/ui_styles.dart';

class GraphItem extends StatelessWidget {
  final PlankRecordViewModel record;
  final int totalTime;

  const GraphItem({
    Key? key,
    required this.record,
    required this.totalTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _Bar(record: record, totalTime: totalTime),
        const SizedBox(height: 6.0),
        Text(TimeUtils.toMonthDay(record.dateTime)),
      ],
    );
  }
}

class _Bar extends StatefulWidget {
  final PlankRecordViewModel record;
  final int totalTime;

  const _Bar({
    Key? key,
    required this.record,
    required this.totalTime,
  }) : super(key: key);

  @override
  __BarState createState() => __BarState();
}

class __BarState extends State<_Bar> {
  bool isDetailShown = false;
  @override
  Widget build(BuildContext context) {
    final double totalHeight = MediaQuery.of(context).size.height * 0.28;
    final double plankTime =
        (widget.record.timeInSeconds / widget.totalTime) * 100;
    final double height = (plankTime / 100) * totalHeight;
    const double width = 32.0;
    final borderRadius = BorderRadius.circular(24.0);

    return Stack(
      children: [
        Container(
          height: totalHeight,
          width: width,
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: borderRadius,
          ),
        ),
        Positioned(
          bottom: 0.0,
          child: GestureDetector(
            onLongPress: () {
              setState(() {
                print('Long Tapped!!');
                isDetailShown = !isDetailShown;
              });
            },
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: borderRadius,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
