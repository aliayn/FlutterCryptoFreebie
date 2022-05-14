import 'package:crypto_freebie/base/base_controller.dart';
import 'package:crypto_freebie/models/pair/pair_summary/pair_summary.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../models/markets/pair/pair.dart';

class TitlePriceController extends BaseController {
  final _cancelToken = CancelToken();
  var pairSummery = Rx<PairSummary?>(null);
  var isLoading = false.obs;
  var error = ''.obs;

  getPairSummery(Pair pair) async {
    isLoading(true);
    pairSummery.value = await provider
        .getPairSummary(pair.exchange, pair.pair, _cancelToken)
        .catchError((e) {
      error(e.toString());
    });
    isLoading(false);
  }
}
