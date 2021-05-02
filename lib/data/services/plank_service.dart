import 'package:hive/hive.dart';
import 'package:plank_me/repositories/planktime_repository.dart';

class PlankService implements PlanktimeRepository {
  final String bestTimeKey = 'bestTime';

  final plank = Hive.box('plankInformation');

  @override
  int getPersonalBestTime() {
    try {
      return plank.get(bestTimeKey) as int;
    } catch (e) {
      rethrow;
    }
  }

  @override
  void setPersonalBestTime(int timeInSeconds) async {
    await plank.put(bestTimeKey, timeInSeconds);
  }
}
