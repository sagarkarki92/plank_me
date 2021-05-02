abstract class PlanktimeRepository {
  int getPersonalBestTime();
  void setPersonalBestTime(int timeInSeconds);

  void recordPlankTime(int timeInSeconds);
}
