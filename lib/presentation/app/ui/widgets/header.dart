import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/presentation/setting/cubit/setting_cubit.dart';

import '../../../app/cubit/app_cubit.dart';
import '../../../ui_utils/ui_styles.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hey ${context.watch<SettingCubit>().user.name},',
      style: context.text.headline4!.bold,
    );
  }
}
