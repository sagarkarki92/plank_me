import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plank_me/core/service_locator.dart';
import 'package:plank_me/presentation/app/app_service/app_navigator.dart';
import 'package:plank_me/presentation/app/cubit/app_cubit.dart';

import '../../../ui_utils/ui_styles.dart';

class DrawerContent extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const DrawerContent(this.scaffoldKey, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return state.maybeWhen(
          loadScreen: (activeIndex, tabs) => Container(
            padding: const EdgeInsets.all(12.0),
            width: 120,
            color: AppColors.lightAccent,
            child: Column(
              children: [
                Expanded(
                  child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemCount: tabs.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 18.0),
                      itemBuilder: (context, index) {
                        final e = tabs[index];
                        return index == activeIndex
                            ? _ActiveDrawerItem(
                                label: e.name,
                                icon: e.iconWidget,
                                onPressed: () {
                                  scaffoldKey.currentState!.openDrawer();
                                  context.read<AppCubit>().setScreen(index);
                                },
                              )
                            : _DrawerItem(
                                label: e.name,
                                icon: e.iconWidget,
                                onPressed: () {
                                  scaffoldKey.currentState!.openDrawer();
                                  context.read<AppCubit>().setScreen(index);
                                },
                              );
                      }),
                ),
                TextButton(
                  child: const Text('Configure'),
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                    locator<AppNavigator>().push(Routes.setting);
                  },
                )
              ],
            ),
          ),
          orElse: () => Container(),
        );
      },
    );
  }
}

class _DrawerItem extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function onPressed;

  const _DrawerItem({
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: AppColors.error,
      overlayColor: MaterialStateProperty.all<Color>(AppColors.error),
      hoverColor: AppColors.error,
      splashColor: AppColors.error,
      highlightColor: AppColors.error,
      onTap: () => onPressed(),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 1000),
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        decoration: BoxDecoration(
            color: AppColors.background,
            border: Border.all(
              color: AppColors.primary,
            ),
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: const [
              BoxShadow(
                color: AppColors.primary,
                blurRadius: 16.0,
                offset: Offset(0.0, 0.4),
              )
            ]),
        child: Column(
          children: [
            FaIcon(
              icon,
              color: AppColors.primaryDark,
            ),
            const SizedBox(height: 8.0),
            Text(
              label,
              style: context.text.bodyText2!.withColor(AppColors.primaryDark),
            ),
          ],
        ),
      ),
    );
  }
}

class _ActiveDrawerItem extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function onPressed;

  const _ActiveDrawerItem({
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: AppColors.error,
      overlayColor: MaterialStateProperty.all<Color>(AppColors.error),
      hoverColor: AppColors.error,
      splashColor: AppColors.error,
      highlightColor: AppColors.error,
      onTap: () => onPressed(),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 1000),
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          children: [
            FaIcon(
              icon,
              color: AppColors.light,
            ),
            const SizedBox(height: 8.0),
            Text(
              label,
              style: context.text.bodyText2!.withColor(AppColors.light),
            ),
          ],
        ),
      ),
    );
  }
}
