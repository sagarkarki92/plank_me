import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/core/service_locator.dart';
import 'package:plank_me/presentation/app/app_service/app_navigator.dart';
import 'package:plank_me/presentation/on_boarding/cubits/setupuser_cubit/setupuser_cubit.dart';
import 'package:plank_me/presentation/on_boarding/cubits/username_cubit/usernamefield_cubit.dart';

import '../../../screens.dart';

class Submit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: BlocProvider.of<SetupuserCubit>(context),
      listener: (context, state) {
        if (state is Success) {
          locator<AppNavigator>().navigatorKey.currentState!.pushReplacement(
                MaterialPageRoute(
                  builder: (_) => TimerScreen(),
                ),
              );
        }
      },
      child: BlocBuilder<UsernamefieldCubit, UsernamefieldState>(
        builder: (context, state) => MaterialButton(
            child: const Text("Let's Start"),
            onPressed: state is UserAvailable
                ? () {
                    context.read<SetupuserCubit>().setUser();
                  }
                : null),
      ),
    );
  }
}
