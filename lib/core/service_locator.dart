import 'package:get_it/get_it.dart';
import 'package:plank_me/data/services/user_service.dart';
import 'package:plank_me/presentation/app/app_service/app_navigator.dart';
import 'package:plank_me/repositories/user_repository.dart';

var locator = GetIt.instance;

Future<void> locatorInit() async {
  locator.registerSingleton<AppNavigator>(AppNavigator());

  locator.registerLazySingleton<UserRepository>(() => UserService());
  await locator.allReady();
}
