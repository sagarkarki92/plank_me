import 'package:flutter/material.dart';

import '../../../ui_utils/ui_styles.dart';
import 'widgets.dart';

class GraphSection extends StatelessWidget {
  const GraphSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideAnimation(
      start: const Offset(0.0, 1.0),
      curve: Curves.easeInQuart,
      child: Container(
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 14.0),
              child: Text('Results', style: context.text.headline5),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0),
                child: RecordGraph(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
