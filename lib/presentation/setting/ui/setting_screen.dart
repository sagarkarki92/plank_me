import 'package:flutter/material.dart';
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
    return Column(
      children: [],
    );
  }
}
