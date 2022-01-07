import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:plank_me/app.dart';
import 'package:plank_me/core/service_locator.dart';

import 'data/services/local_storage_service.dart';
import 'presentation/app/cubit/app_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(StorageKeys.userDetails);
  await Hive.openBox(StorageKeys.plankInformation);
  await Hive.openBox(StorageKeys.plankRecords);
  await Hive.openBox(StorageKeys.time);

  locatorInit();
  runApp(BlocProvider(
    create: (_) => AppCubit(),
    child: PlankMe(),
  ));
}
