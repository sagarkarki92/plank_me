import 'package:flutter/material.dart';

import '../../ui_utils/ui_styles.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      color: AppColors.lightAccent,
    );
  }
}
