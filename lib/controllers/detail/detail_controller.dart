import 'package:crypto_freebie/base/base_controller.dart';
import 'package:crypto_freebie/models/graph/graph/graph.dart';
import 'package:crypto_freebie/models/markets/pair/pair.dart';
import 'package:get/get.dart';

import '../../utils/time.dart';

class DetailController extends BaseController with StateMixin<Graph> {
  getGraph(Pair pair, [Graph? graph]) async {
    if (graph != null) {
      change(graph, status: RxStatus.success());
    }

    change(null, status: RxStatus.loading());

    String interval = timeDataProvider.value.periods;
    String fromHours = timeDataProvider.value.before;
    String before = "";
    if (fromHours.isNotEmpty) {
      before = (DateTime.now()
                  .subtract(Duration(hours: int.parse(fromHours)))
                  .toUtc()
                  .millisecondsSinceEpoch ~/
              1000)
          .toString();
    }

    await provider
        .getPairGraph(pair.exchange, pair.pair,
            periods: interval, before: before)
        .then((value) => change(value, status: RxStatus.success()))
        .catchError((error) {
      change(null, status: RxStatus.error(error.toString().tr));
    });
  }
}
