class TimeUtils {
  static String getShowTime(int timeInSeconds) =>
      '${_getMinutes(timeInSeconds)} : ${_getSeconds(timeInSeconds)}';
  static String getShowTimeString(int timeInSeconds) =>
      '${_getMinutes(timeInSeconds)} Minutes and ${_getSeconds(timeInSeconds)} Seconds';

  static String _getMinutes(int timeInSeconds) =>
      (timeInSeconds ~/ 60).floor().toString().padLeft(2, '0');
  static String _getSeconds(int timeInSeconds) =>
      (timeInSeconds % 60).floor().toString().padLeft(2, '0');

  static Duration getScheduledDuration(int hour, int minutes) {
    //final time = getTomorrowDateTime(hour, minutes);
    return const Duration(milliseconds: 2);
  }

  static DateTime getTomorrowDateTime(int hour, int minutes) {
    final DateTime now = DateTime.now();
    final DateTime dt =
        DateTime(now.year, now.month, now.day + 1, hour, minutes);
    return dt;
  }
}
