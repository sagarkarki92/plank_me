import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../ui_utils/ui_styles.dart';
import '../cubit/setting_cubit.dart';
import 'widgets/dark_mode.dart';
import 'widgets/widgets.dart';

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
        children: const [
          UsernameSection(),
          SizedBox(height: 16.0),
          MaterialTile(
            label: 'Mode',
            child: DarkMode(),
          ),
        ],
      ),
    );
  }
}

class UsernameSection extends StatelessWidget {
  const UsernameSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingCubit, SettingState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (isDarkMode, username) => MaterialTile(
            label: 'Username',
            child: UserDisplay(username: username),
          ),
          editing: (isDarkMode, username) => MaterialTile(
            label: 'Username',
            child: UserEdit(
              username: username,
            ),
          ),
          orElse: () => Container(),
        );
      },
    );
  }
}
