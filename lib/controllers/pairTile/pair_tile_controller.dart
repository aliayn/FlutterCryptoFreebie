import 'package:crypto_freebie/base/base_controller.dart';
import 'package:crypto_freebie/models/graph/graph/graph.dart';
import 'package:crypto_freebie/models/pair/pair_summary/pair_summary.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../models/markets/pair/pair.dart';
import '../../utils/time.dart';

class PairTileController extends BaseController with StateMixin {
  final _cancelToken = CancelToken();
  final pairSummary = Rx<PairSummary?>(null);
  final graph = Rx<Graph?>(null);

  getFeed(Pair pair) async {
    change(null, status: RxStatus.loading());
    String interval = timeDataProvider.periods;
    String fromHours = timeDataProvider.before;
    String before = "";
    if (fromHours.isNotEmpty) {
      before = (DateTime.now()
                  .subtract(Duration(hours: int.parse(fromHours)))
                  .toUtc()
                  .millisecondsSinceEpoch ~/
              1000)
          .toString();
    }

    try {
      graph(await provider.getPairGraph(pair.exchange, pair.pair,
          periods: interval, before: before));
      pairSummary(await provider.getPairSummary(
          pair.exchange, pair.pair, _cancelToken));
      change(null, status: RxStatus.success());
    } on Exception catch (e) {
      change(null, status: RxStatus.error(e.toString().tr));
    }
  }
}
