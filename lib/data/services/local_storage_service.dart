import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class StorageKeys {
  static const String userDetails = 'userDetails';
  static const String plankInformation = 'plankInformation';
  static const String plankRecords = 'plankRecords';

  static const String time = 'time';
}

class LocalStorage {
  Future<void> init() async {
    await Hive.initFlutter();
    await Hive.openBox(StorageKeys.userDetails);
    await Hive.openBox(StorageKeys.plankInformation);
    await Hive.openBox(StorageKeys.plankRecords);
  }
}
