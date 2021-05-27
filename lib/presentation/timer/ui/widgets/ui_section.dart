import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plank_me/presentation/timer/myplank_cubit/myplank_cubit.dart';
import '../../../ui_utils/ui_styles.dart';

class UiSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Madafaka"),
      ],
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hey ${context.read<MyplankCubit>().userName},',
      style: context.text.headline4!.bold,
    );
  }
}
