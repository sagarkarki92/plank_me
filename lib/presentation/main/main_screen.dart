import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../app/cubit/app_cubit.dart';
import '../screens.dart';
import '../ui_utils/colors.dart';
import '../ui_utils/ui_styles.dart';
import 'widgets/widgets.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: const DrawerContent(),
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
        body: FutureBuilder(
            future: context.read<AppCubit>().hasAlreadyPlankedToday(),
            builder: (context, state) {
              if (state.hasData) {
                return state.data! as bool ? TimerScreen() : TimerScreen();
              } else if (state.hasError) {
                return TimerScreen();
              }
              return Container();
            }),
      ),
    );
  }
}


