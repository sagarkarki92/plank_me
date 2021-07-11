import 'package:flutter/material.dart';
import '../ui_utils/ui_styles.dart';

class PlankBackground extends StatelessWidget {
  final Widget child;
  const PlankBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
