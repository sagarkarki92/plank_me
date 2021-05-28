import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../ui_utils/ui_styles.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      width: 120,
      color: AppColors.lightAccent,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          separatorBuilder: (_, __) => const SizedBox(height: 18.0),
          itemBuilder: (context, index) => DrawerItem()),
    );
  }
}

class DrawerItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: AppColors.error,
      overlayColor: MaterialStateProperty.all<Color>(AppColors.error),
      hoverColor: AppColors.error,
      splashColor: AppColors.error,
      highlightColor: AppColors.error,
      onTap: () {
        print('Tap !');
      },
      child: Container(
        
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        decoration: BoxDecoration(
          color: AppColors.background,
          border: Border.all(
            color: AppColors.primary,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          children: const [
            const FaIcon(FontAwesomeIcons.addressBook),
            const SizedBox(height: 8.0),
            Text('Report'),
          ],
        ),
      ),
    );
  }
}
