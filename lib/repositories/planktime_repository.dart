import 'package:plank_me/data/models/plank_info.dart';

abstract class PlanktimeRepository {
  int getPersonalBestTime();
  void setPersonalBestTime(int timeInSeconds);
  void recordPlankTime(int timeInSeconds);
  List<PlankInfo> getAllPlankTime();
}
