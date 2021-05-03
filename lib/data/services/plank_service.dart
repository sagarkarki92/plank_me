import 'package:hive/hive.dart';
import 'package:plank_me/data/models/plank_info.dart';
import 'package:plank_me/data/services/local_storage_service.dart';
import 'package:plank_me/repositories/planktime_repository.dart';

class PlankService implements PlanktimeRepository {
  final String bestTimeKey = 'bestTime';

  final plank = Hive.box(StorageKeys.plankInformation);
  final plankRecords = Hive.box(StorageKeys.plankRecords);
  late int currentPlankTime;

  @override
  int getPersonalBestTime() {
    try {
      return plank.get(bestTimeKey, defaultValue: 0) as int;
    } catch (e) {
      rethrow;
    }
  }

  @override
  void setPersonalBestTime(int timeInSeconds) async {
    await plank.put(bestTimeKey, timeInSeconds);
  }

  @override
  void recordPlankTime(int timeInSeconds) async {
    currentPlankTime = timeInSeconds;

    await plankRecords.add({
      'date': DateTime.now().toIso8601String(),
      'plankTime': timeInSeconds,
    });
  }

  @override
  List<PlankInfo> getAllPlankTime() {
    final list = plankRecords.values
        .map((e) => PlankInfo(
            date: e['date'] as String, planktime: e['plankTime'] as int))
        .toList();
    return list;
  }
}
