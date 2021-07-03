import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plank_me/presentation/timer/myplank_cubit/myplank_cubit.dart';
import '../../../ui_utils/ui_styles.dart';

class UiSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _AnimationWidget(),
      ],
    );
  }
}

class _AnimationWidget extends StatefulWidget {
  const _AnimationWidget({Key? key}) : super(key: key);

  @override
  __AnimationWidgetState createState() => __AnimationWidgetState();
}

class __AnimationWidgetState extends State<_AnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    animation = Tween(begin: 12.0, end: 100.0).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.elasticInOut,
    ));

    animationController.forward();

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) => Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(animation.value),
        ),
      ),
    );
  }
}
