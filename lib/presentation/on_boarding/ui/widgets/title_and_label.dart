import 'package:flutter/material.dart';

import '../../../ui_utils/ui_styles.dart';

class TitleAndLabel extends StatelessWidget {
  const TitleAndLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Plank Me',
          style: context.text.headline3!.withColor(AppColors.light),
        ),
        const SizedBox(height: 12.0),
        Text(
          '"Plank daily and be supper fit" - Shiva ji',
          style: context.text.headline6!.withColor(
            AppColors.light,
          ),
        ),
      ],
    );
  }
}
