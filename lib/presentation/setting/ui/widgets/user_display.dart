import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/presentation/setting/cubit/setting_cubit.dart';
import './widgets.dart';

class UserDisplay extends StatelessWidget {
  final String username;
  const UserDisplay({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(username),
        IconButton(
          onPressed: () => context.read<SettingCubit>().editUsername(),
          icon: const FaIcon(
            FontAwesomeIcons.edit,
            size: 16.0,
          ),
        ),
      ],
    );
  }
}
