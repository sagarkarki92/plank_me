import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/core/service_locator.dart';
import 'package:plank_me/presentation/app/cubit/app_cubit.dart';
import 'package:plank_me/presentation/global_widgets/plank_background.dart';
import 'package:plank_me/presentation/on_boarding/cubits/setupuser_cubit/setupuser_cubit.dart';
import 'package:plank_me/presentation/on_boarding/ui/widgets/widgets.dart';
import 'package:plank_me/repositories/user_repository.dart';
import '../../ui_utils/ui_styles.dart';

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
        const _TitleAndLabel(),
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

class _TitleAndLabel extends StatelessWidget {
  const _TitleAndLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Plank Me',
          style: context.text.headline3!.withColor(AppColors.light),
        ),
        const SizedBox(height: 12.0),
        Text(
          '"Plank daily and be supper fit" - sagar92',
          style: context.text.headline6!.withColor(
            AppColors.light,
          ),
        ),
      ],
    );
  }
}
