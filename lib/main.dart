import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:plank_me/app.dart';
import 'package:plank_me/core/service_locator.dart';

import 'presentation/app/cubit/app_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('userDetails');
  await Hive.openBox('plankInformation');
  locatorInit();
  runApp(BlocProvider(
    create: (_) => AppCubit(),
    child: PlankMe(),
  ));
}
