class TimeUtils {
  static String getShowTime(int timeInSeconds) =>
      '${_getMinutes(timeInSeconds)} : ${_getSeconds(timeInSeconds)}';
  static String getShowTimeString(int timeInSeconds) =>
      '${_getMinutes(timeInSeconds)} Minutes and ${_getSeconds(timeInSeconds)} Seconds';

  static String _getMinutes(int timeInSeconds) =>
      (timeInSeconds ~/ 60).floor().toString().padLeft(2, '0');
  static String _getSeconds(int timeInSeconds) =>
      (timeInSeconds % 60).floor().toString().padLeft(2, '0');
}
