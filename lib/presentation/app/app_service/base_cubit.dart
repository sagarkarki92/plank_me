import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/core/service_locator.dart';

import 'navigation_service.dart';

class BaseCubit<T> extends Cubit<T> {
  final navigator = locator<NavigationService>().navigatorKey;
  BaseCubit(T initialState) : super(initialState);
}
