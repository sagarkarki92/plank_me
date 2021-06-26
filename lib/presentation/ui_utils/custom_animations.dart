
import 'package:flutter/material.dart';

class SlideAnimation extends StatefulWidget {
  final Offset start;
  final Offset end;
  final Widget child;
  final Duration duration;
  final Curve curve;
  const SlideAnimation({
    Key? key,
    this.start = const Offset(1.0, 0),
    this.end = const Offset(0.0, 0.0),
    this.curve = Curves.easeIn,
    this.duration = const Duration(milliseconds:500),
    required this.child,
  }) : super(key: key);

  @override
  _SlideAnimationState createState() => _SlideAnimationState();
}

class _SlideAnimationState extends State<SlideAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: widget.duration);
    animation = Tween(begin: widget.start, end: widget.end)
        .animate(CurvedAnimation(parent: animationController, curve: widget.curve));

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: animation,
      child: widget.child,
    );
  }
}
