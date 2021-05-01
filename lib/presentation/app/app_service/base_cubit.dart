import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/core/service_locator.dart';

import 'app_navigator.dart';

class BaseCubit<T> extends Cubit<T> {
  final navigator = locator<AppNavigator>().navigatorKey;
  BaseCubit(T initialState) : super(initialState);
}
