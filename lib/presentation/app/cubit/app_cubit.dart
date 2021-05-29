import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plank_me/data/models/user.dart';

import '../../../core/exceptions/user_exception.dart';
import '../../../core/service_locator.dart';
import '../../../repositories/planktime_repository.dart';
import '../../../repositories/user_repository.dart';
import '../app_service/base_cubit.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

class ViewItem {
  final String name;
  final IconData iconWidget;

  ViewItem(this.name, this.iconWidget);
}

final List<ViewItem> _viewItems = [
  ViewItem(
    'Timer',
    FontAwesomeIcons.addressBook,
  ),
  ViewItem(
    'Report',
    FontAwesomeIcons.projectDiagram,
  ),
  ViewItem(
    'About Plank',
    FontAwesomeIcons.addressCard,
  ),
];

class AppCubit extends BaseCubit<AppState> {
  final PlanktimeRepository planktimeRepository = locator();
  final UserRepository userRepository = locator();
  late User _user;
  int _activeScreen = 0;

  AppCubit() : super(AppState.loadScreen(0, _viewItems));
  User get user => _user;

  bool isSessionAvailable() {
    try {
      _user = userRepository.getUserDetails();
      return true;
    } on NoUserException catch (_) {
      return false;
    }
  }

  Future<bool> hasAlreadyPlankedToday() async {
    final allPlanks = planktimeRepository.getAllPlankTime();
    if (allPlanks.isEmpty) {
      emit(LoadScreen(_activeScreen, _viewItems));
      return false;
    }
    final bool hasPlanked = allPlanks.last.date!.day == DateTime.now().day;
    if (hasPlanked) {
      _activeScreen = 1;
    }
    emit(LoadScreen(_activeScreen, _viewItems));
    return Future.value(hasPlanked);
  }

  void setUser(User user) {
    _user = user;
    emit(LoadScreen(_activeScreen, _viewItems));
  }

  void setScreen(int index) {
    _activeScreen = index;
    emit(LoadScreen(_activeScreen, _viewItems));
  }
}
