import 'package:crypto_freebie/base/base_controller.dart';
import 'package:crypto_freebie/models/pair/pair_summary/pair_summary.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../models/markets/pair/pair.dart';

class TitlePriceController extends BaseController with StateMixin<PairSummary> {
  final _cancelToken = CancelToken();

  getPairSummery(Pair pair) async {
    change(null, status: RxStatus.loading());
    try {
      var pairSummery =
          await provider.getPairSummary(pair.exchange, pair.pair, _cancelToken);
      change(pairSummery, status: RxStatus.success());
    } on Exception catch (e) {
      change(null, status: RxStatus.error(e.toString().tr));
    }
  }

  @override
  void onClose() {
    _cancelToken.cancel();
    super.onClose();
  }
}
