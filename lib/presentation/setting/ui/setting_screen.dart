import 'package:flutter/material.dart';
import 'package:plank_me/presentation/setting/ui/widgets/dark_mode.dart';
import 'package:plank_me/presentation/setting/ui/widgets/widgets.dart';
import '../../ui_utils/ui_styles.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: context.text.headline6,
        ),
        backgroundColor: context.theme.scaffoldBackgroundColor,
      ),
      body: const _SettingBody(),
    );
  }
}

class _SettingBody extends StatelessWidget {
  const _SettingBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          const MaterialTile(
            label: 'Username',
            child: UserEdit(),
          ),
          const SizedBox(height: 16.0),
          const MaterialTile(
            label: 'Mode',
            child: DarkMode(),
          ),
        ],
      ),
    );
  }
}
