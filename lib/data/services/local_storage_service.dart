import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocalStorage {
  void init() async {
    await Hive.initFlutter();
    await Hive.openBox('userDetails');
  }
}
