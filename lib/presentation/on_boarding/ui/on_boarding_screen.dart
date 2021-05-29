import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/core/service_locator.dart';
import 'package:plank_me/presentation/app/cubit/app_cubit.dart';
import 'package:plank_me/presentation/on_boarding/cubits/setupuser_cubit/setupuser_cubit.dart';
import 'package:plank_me/presentation/on_boarding/ui/widgets/user_info.dart';
import 'package:plank_me/repositories/user_repository.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SetupuserCubit(
          userRepository: locator<UserRepository>(),
          appCubit: context.read<AppCubit>(),
        ),
        child: Center(child: UserInfo()),
      ),
    );
  }
}
