import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/setupuser_cubit/setupuser_cubit.dart';
import '../../cubits/username_cubit/usernamefield_cubit.dart';
import 'gender_selection.dart';
import 'submit.dart';
import 'user_name_field.dart';
import '../../../ui_utils/ui_styles.dart';

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          UsernamefieldCubit(setupuserCubit: context.read<SetupuserCubit>()),
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: context.theme.scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          UsernameField(),
          const SizedBox(height:12.0),
          Submit(),
        ],
      ),
    );
  }
}
