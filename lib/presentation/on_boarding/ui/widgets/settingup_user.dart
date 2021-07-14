import 'package:flutter/material.dart';
import 'package:plank_me/presentation/on_boarding/ui/widgets/user_info.dart';
import 'package:plank_me/presentation/on_boarding/ui/widgets/widgets.dart';
import 'package:plank_me/presentation/ui_utils/ui_styles.dart';

class SettingupUser extends StatelessWidget {
  const SettingupUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child:  ListView(
            shrinkWrap: true,
          children: [
            const Hero(
              tag: 'plakMe',
              child: TitleAndLabel(),
            ),
            GenderSelection(),
            const SizedBox(height: 12.0),
            SlideAnimation(
              duration: const Duration(milliseconds:1000),
              start: const Offset(0.0, 2.0),
              child: UserInfo(),
            )
          ],
        ),
      
    );
  }
}
