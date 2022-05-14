import 'package:crypto_freebie/base/base_controller.dart';
import 'package:crypto_freebie/models/graph/graph/graph.dart';
import 'package:crypto_freebie/models/pair/pair_summary/pair_summary.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../models/markets/pair/pair.dart';
import '../../utils/time.dart';

class PairTileController extends BaseController {
  final _cancelToken = CancelToken();
  final pairSummary = Rx<PairSummary?>(null);
  final graph = Rx<Graph?>(null);
  final pairSummaryLoading = false.obs;
  final pairSummaryError = ''.obs;
  final graphLoading = false.obs;
  final graphError = ''.obs;

  getFeed(Pair pair) {
    _getPairSummery(pair);
    _getGraph(pair);
  }

  _getPairSummery(Pair pair) async {
    pairSummaryLoading(true);
    await provider
        .getPairSummary(pair.exchange, pair.pair, _cancelToken)
        .then((value) => pairSummary(value))
        .catchError((error) {
      pairSummaryError(error.toString().tr);
    });

    pairSummaryLoading(false);
  }

  _getGraph(Pair pair) async {
    graphLoading(true);
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

    await provider
        .getPairGraph(pair.exchange, pair.pair,
            periods: interval, before: before)
        .then((value) => graph(value))
        .catchError((error) {
      graphError(error.toString().tr);
    });

    graphLoading(false);
  }
}
