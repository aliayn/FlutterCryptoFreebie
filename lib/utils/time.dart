import 'package:get/get.dart';

class TimeGraphData {
  String name;
  String periods;
  String before;
  TimeGraphData(this.name, this.periods, this.before);
}

final timeList = [
  TimeGraphData("1d", "300", "24"),
  TimeGraphData("1w", "1800", "168"),
  TimeGraphData("1m", "3600", "730"),
  TimeGraphData("1y", "86400", "8760"),
];

final timeDataProvider = Rx<TimeGraphData>(TimeGraphData("1m", "60", "12"));
