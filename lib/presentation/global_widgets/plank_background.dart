import 'package:flutter/material.dart';
import '../ui_utils/ui_styles.dart';

class PlankBackground extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  const PlankBackground({
    Key? key,
    required this.child,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? MediaQuery.of(context).size.height,
      width: width ?? MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            context.theme.primaryColor,
            context.theme.primaryColor,
            context.theme.primaryColorDark,
          ],
        ),
      ),
      child: child,
    );
  }
}
