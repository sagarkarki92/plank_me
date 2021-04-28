import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/presentation/on_boarding/cubits/setupuser_cubit/setupuser_cubit.dart';
import 'package:plank_me/presentation/on_boarding/ui/widgets/user_info.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: BlocProvider(
        create: (context) => SetupuserCubit(),
        child: Center(child: UserInfo()),
      ),
    );
  }
}
