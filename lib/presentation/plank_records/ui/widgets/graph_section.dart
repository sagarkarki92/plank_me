import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/core/utils/time_utils.dart';
import 'package:plank_me/presentation/plank_records/cubit/plankrecord_cubit.dart';

import '../../../ui_utils/ui_styles.dart';

class GraphSection extends StatelessWidget {
  const GraphSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 14.0),
            child: Text(
              'Results',
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical:24.0),
              child: _Graph(),
            ),
          ),
        ],
      ),
    );
  }
}

class _Graph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlankrecordCubit, PlankrecordState>(
      builder: (context, state) => state.maybeWhen(
        complete: (_, __, ___, records) => Container(
          color: AppColors.light,
          child: BarChart(
            BarChartData(
              barTouchData: BarTouchData(
                touchTooltipData: BarTouchTooltipData(
                  tooltipBgColor: AppColors.background,
                  getTooltipItem: (group, groupIndex, rod, rodIndex) =>
                      BarTooltipItem(
                    '${TimeUtils.toDay(records[groupIndex].dateTime)} \n',
                    context.text.subtitle1!.withColor(AppColors.dark),
                    children: <TextSpan>[
                      TextSpan(
                        text: records[groupIndex].showPlankTime,
                        style: context.text.caption
                      )
                    ]
                  ),
                ),
              ),
              titlesData: FlTitlesData(
                bottomTitles: _buildBottomLabel(context, records),
                leftTitles: SideTitles(showTitles: false),
              ),
              barGroups: showingGroups(records),
              borderData: FlBorderData(show: false),
              alignment: BarChartAlignment.center,
            ),
            swapAnimationDuration: const Duration(milliseconds: 500),
            swapAnimationCurve: Curves.easeIn,
          ),
        ),
        orElse: () => const SizedBox(),
      ),
    );
  }

  BarChartGroupData _buildBarItem(
    int xValue,
    double yValue,
  ) {
    return BarChartGroupData(
      x: xValue,
      barRods: [
        BarChartRodData(
          y: yValue,
          colors: [
            AppColors.primaryDark,
            AppColors.primary,
          ],
          width: 26.0,
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            colors: [AppColors.background],
            y: 15.0,
          ),
        )
      ],
    );
  }

  SideTitles _buildBottomLabel(
      BuildContext context, List<PlankRecordViewModel> records) {
    return SideTitles(
        margin: 8.0,
        getTextStyles: (_) => context.text.caption!.withColor(AppColors.dark),
        showTitles: true,
        getTitles: (barIndex) =>
            TimeUtils.toMonthDay(records[barIndex.toInt()].dateTime));
  }

  List<BarChartGroupData> showingGroups(List<PlankRecordViewModel> records) =>
      List.generate(records.length, (i) {
        return _buildBarItem(i, records[i].timeInSeconds.toDouble());
      });
}
