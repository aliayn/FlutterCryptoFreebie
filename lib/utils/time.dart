import 'package:get/get.dart';

class TimeGraphData {
  String name;
  String periods;
  String before;
  TimeGraphData(this.name, this.periods, this.before);
}

final timeList = [
  TimeGraphData("1D", "300", "24"),
  TimeGraphData("1W", "1800", "168"),
  TimeGraphData("1M", "3600", "730"),
  TimeGraphData("1Y", "86400", "8760"),
];

final timeDataProvider = Rx<TimeGraphData>(TimeGraphData("1M", "60", "12"));
