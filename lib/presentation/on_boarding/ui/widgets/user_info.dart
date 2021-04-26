import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/presentation/on_boarding/cubits/setupuser_cubit/setupuser_cubit.dart';
import 'package:plank_me/presentation/on_boarding/cubits/username_cubit/usernamefield_cubit.dart';
import 'package:plank_me/presentation/on_boarding/ui/widgets/submit.dart';
import 'package:plank_me/presentation/on_boarding/ui/widgets/user_name_field.dart';

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          UsernamefieldCubit(setupuserCubit: context.read<SetupuserCubit>()),
      child: Column(
        children: [
          UsernameField(),
          Submit(),
        ],
      ),
    );
  }
}
