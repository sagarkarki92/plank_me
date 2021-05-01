import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/setupuser_cubit/setupuser_cubit.dart';
import '../../cubits/username_cubit/usernamefield_cubit.dart';
import 'gender_selection.dart';
import 'submit.dart';
import 'user_name_field.dart';

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          UsernamefieldCubit(setupuserCubit: context.read<SetupuserCubit>()),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            UsernameField(),
            GenderSelection(),
            Submit(),
          ],
        ),
      ),
    );
  }
}
