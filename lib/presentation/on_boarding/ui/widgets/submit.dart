import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/service_locator.dart';
import '../../../app/app_service/app_navigator.dart';
import '../../../screens.dart';
import '../.././../ui_utils/ui_styles.dart';
import '../../cubits/setupuser_cubit/setupuser_cubit.dart';
import '../../cubits/username_cubit/usernamefield_cubit.dart';

class Submit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: BlocProvider.of<SetupuserCubit>(context),
      listener: (context, state) {
        if (state is Success) {
          locator<AppNavigator>().navigatorKey.currentState!.pushReplacement(
                MaterialPageRoute(
                  builder: (_) => MainScreen(),
                ),
              );
        }
      },
      child: const _StartButton(),
    );
  }
}

class _StartButton extends StatelessWidget {
  const _StartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsernamefieldCubit, UsernamefieldState>(
      builder: (context, state) => InkWell(
        onTap: state is UserAvailable
            ? () => context.read<SetupuserCubit>().setUser()
            : null,
        child: AnimatedContainer(
          width: double.infinity,
          padding: const EdgeInsets.all(12.0),
          duration: const Duration(milliseconds: 500),
          decoration: BoxDecoration(
              color: state is UserAvailable
                  ? context.theme.accentColor
                  : context.theme.accentColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12.0),),
          child: Center(
            child: Text(
              "Let's Start",
              style: context.text.button!.withColor(AppColors.light),
            ),
          ),
        ),
      ),
    );
  }
}
