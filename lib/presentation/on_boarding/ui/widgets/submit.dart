import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/presentation/on_boarding/cubits/setupuser_cubit/setupuser_cubit.dart';
import 'package:plank_me/presentation/on_boarding/cubits/username_cubit/usernamefield_cubit.dart';

class Submit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsernamefieldCubit,UsernamefieldState>(
      
      builder: (context, state) => MaterialButton(
          child: const Text("Let's Start"),
          onPressed: state is UserAvailable ? () {
            context.read<SetupuserCubit>().setUser();
          } : null),
    );
  }
}
