import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../app/cubit/app_cubit.dart';
import '../../screens.dart';
import '../../ui_utils/colors.dart';
import '../../ui_utils/ui_styles.dart';
import 'widgets/widgets.dart';

class MainScreen extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Widget> _view = [
    TimerScreen(),
    PlankRecordScreen(),
    AboutPlankScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: _scaffoldKey,
          endDrawer: DrawerContent(_scaffoldKey),
          appBar: AppBar(
            title: const Header(),
            backgroundColor: AppColors.background,
            elevation: 0,
            actions: [
              IconButton(
                onPressed: () {
                  _scaffoldKey.currentState!.openEndDrawer();
                },
                icon: const FaIcon(
                  FontAwesomeIcons.bars,
                  color: Colors.black,
                  size: 18.0,
                ),
              ),
            ],
          ),
          body: BlocBuilder<AppCubit, AppState>(
            builder: (context, state) {
              return state.maybeWhen(
                  loadScreen: (tabIndex, tabs) => _view[tabIndex],
                  orElse: () => Container());
            },
          )),
    );
  }
}
