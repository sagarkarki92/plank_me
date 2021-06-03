import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
            child: Text(
              'Results',
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
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
              titlesData: FlTitlesData(
                bottomTitles: _buildBottomLabel(context),
                leftTitles: SideTitles(showTitles: false),
              ),
              barGroups: showingGroups(),
              borderData: FlBorderData(show: false),
            ),
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
    return BarChartGroupData(x: xValue, barRods: [
      BarChartRodData(
        y: yValue,
        colors: [
          AppColors.primaryDark,
          AppColors.primary,
        ],
        width: 22.0,
        // backDrawRodData: BackgroundBarChartRodData(
        //   show: true,
        //   colors: [AppColors.background],
        //   y: 24.0,
        // ),
      )
    ]);
  }

  SideTitles _buildBottomLabel(BuildContext context) {
    return SideTitles(
      margin: 16.0,
      getTextStyles: (_) => context.text.bodyText1!.withColor(AppColors.dark),
      getTitles: (value) {
        switch (value.toInt()) {
          case 0:
            return 'M';
          case 1:
            return 'T';
          case 2:
            return 'W';
          case 3:
            return 'T';
          case 4:
            return 'F';
          case 5:
            return 'S';
          case 6:
            return 'S';
          default:
            return '';
        }
      },
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(7, (i) {
        switch (i) {
          case 0:
            return _buildBarItem(0, 5);
          case 1:
            return _buildBarItem(1, 6.5);
          case 2:
            return _buildBarItem(2, 5);
          case 3:
            return _buildBarItem(3, 7.5);
          case 4:
            return _buildBarItem(4, 9);
          case 5:
            return _buildBarItem(5, 11.5);
          case 6:
            return _buildBarItem(6, 6.5);
          default:
            return throw Error();
        }
      });
}
