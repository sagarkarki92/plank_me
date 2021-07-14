import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/service_locator.dart';
import '../../../repositories/user_repository.dart';
import '../../app/cubit/app_cubit.dart';
import '../../global_widgets/plank_background.dart';
import '../cubits/setupuser_cubit/setupuser_cubit.dart';
import 'widgets/widgets.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SetupuserCubit(
          userRepository: locator<UserRepository>(),
          appCubit: context.read<AppCubit>(),
        ),
        child: const _OnBoardingScreenBody(),
      ),
    );
  }
}

class _OnBoardingScreenBody extends StatefulWidget {
  const _OnBoardingScreenBody({Key? key}) : super(key: key);

  @override
  __OnBoardingScreenBodyState createState() => __OnBoardingScreenBodyState();
}

class __OnBoardingScreenBodyState extends State<_OnBoardingScreenBody> {
  bool isSettingUser = false;

  @override
  Widget build(BuildContext context) {
    return PlankBackground(
      child: isSettingUser ? const SettingupUser() : _buildOnboardingView(),
    );
  }

  Widget _buildOnboardingView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Hero(
          tag: 'plankMe',
          child: TitleAndLabel(),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              isSettingUser = true;
            });
          },
          child: const Text('Set up User'),
        ),
      ],
    );
  }
}
