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

class _Bar extends StatelessWidget {
  final PlankRecordViewModel record;
  final int totalTime;

  const _Bar({
    Key? key,
    required this.record,
    required this.totalTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double totalHeight = MediaQuery.of(context).size.height * 0.28;
    final double plankTime = (record.timeInSeconds / totalTime) * 100;
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
          child: TapableContainer(
            height: height,
            width: width,
            borderRadius: borderRadius,
            data: record,
          ),
        ),
      ],
    );
  }
}

class TapableContainer extends StatefulWidget {
  const TapableContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.borderRadius,
    required this.data,
  }) : super(key: key);

  final double height;
  final double width;
  final BorderRadius borderRadius;
  final PlankRecordViewModel data;

  @override
  _TapableContainerState createState() => _TapableContainerState();
}

class _TapableContainerState extends State<TapableContainer> {
  bool isDetailShown = false;

  late OverlayEntry overlayEntry;

  @override
  void initState() {
    super.initState();
  }

  void showOverlayWidget() {
    final RenderBox renderBox = context.findRenderObject()! as RenderBox;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);
    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        left: offset.dx - 16,
        bottom: size.height + 120,
        child: SlideAnimation(
          start: const Offset(0.0, 1.0),
          curve: Curves.elasticOut,
          child: Material(
            color: AppColors.background,
            elevation: 12.0,
            shadowColor: AppColors.lightAccent,
            borderRadius: BorderRadius.circular(12.0),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Text(widget.data.showPlankTime),
                  const SizedBox(height: 0.0),
                  Text(TimeUtils.toDay(widget.data.dateTime))
                ],
              ),
            ),
          ),
        ),
      ),
    );
    Overlay.of(context)!.insert(overlayEntry);
  }

  void hideOverlayWidget() {
    overlayEntry.remove();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPressStart: (_) => showOverlayWidget(),
      onLongPressEnd: (details) => hideOverlayWidget(),
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: widget.borderRadius,
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.primary,
              AppColors.primaryDark,
            ],
          ),
        ),
      ),
    );
  }
}
