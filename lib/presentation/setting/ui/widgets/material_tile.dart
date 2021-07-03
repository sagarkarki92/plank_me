import 'package:flutter/material.dart';
import '../../../ui_utils/ui_styles.dart';

class MaterialTile extends StatelessWidget {
  final String label;
  final Widget child;
  const MaterialTile({
    Key? key,
    required this.label,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: context.text.caption!.withColor(AppColors.darkFaded)),
        const SizedBox(height: 6.0),
        AnimatedContainer(
          duration: const Duration(milliseconds: 2000),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: child,
          ),
          color: AppColors.light,
        ),
      ],
    );
  }
}
