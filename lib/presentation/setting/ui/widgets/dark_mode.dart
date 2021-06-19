import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/setting_cubit.dart';

class DarkMode extends StatelessWidget {
  const DarkMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Dark Mode'),
        BlocBuilder<SettingCubit, SettingState>(
          builder: (context, state) => state.maybeWhen(
            orElse: () => SizedBox(),
            loaded: (isDarkMode, _) => _buildSwitch(context, isDarkMode),
            editing: (isDarkMode, _) => _buildSwitch(context, isDarkMode),
          ),
        )
      ],
    );
  }

  Widget _buildSwitch(BuildContext context, bool isDarkMode) {
    return Switch(
        value: isDarkMode,
        onChanged: (value) => context.read<SettingCubit>().toggleDarkMode());
  }
}
