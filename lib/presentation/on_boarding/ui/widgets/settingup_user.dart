import 'package:flutter/material.dart';
import 'package:plank_me/presentation/on_boarding/ui/widgets/user_info.dart';

class SettingupUser extends StatelessWidget {
  const SettingupUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: UserInfo(),
    );
  }
}
