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
  final loading = false.obs;
  final error = ''.obs;

  getFeed(Pair pair) {
    Future.wait([_getPairSummery(pair), _getGraph(pair)]).then((value) {
      pairSummary(value[0] as PairSummary);
      graph(value[1] as Graph);
    }).catchError((onError) {
      error(error.toString().tr);
    });
  }

  Future<PairSummary> _getPairSummery(Pair pair) =>
      provider.getPairSummary(pair.exchange, pair.pair, _cancelToken);

  Future<Graph> _getGraph(Pair pair) {
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

    return provider.getPairGraph(pair.exchange, pair.pair,
        periods: interval, before: before);
  }
}
