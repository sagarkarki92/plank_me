import 'package:get_it/get_it.dart';
import 'package:plank_me/data/services/local_notification_service.dart';
import 'package:plank_me/data/services/services.dart';
import 'package:plank_me/data/services/time_service.dart';
import 'package:plank_me/presentation/app/app_service/app_navigator.dart';
import 'package:plank_me/repositories/planktime_repository.dart';
import 'package:plank_me/repositories/user_repository.dart';

var locator = GetIt.instance;

Future<void> locatorInit() async {
  locator.registerSingleton<AppNavigator>(AppNavigator());

  //locator.registerLazySingleton<LocalStorage>(() => LocalStorage()..init());
  locator.registerLazySingleton<UserRepository>(() => UserService());
  locator.registerLazySingleton<PlanktimeRepository>(() => PlankService());
  locator.registerLazySingleton(() => LocalNotificationService()..init());
  locator.registerLazySingleton(() => TimeService(locator()));
  await locator.allReady();
}
