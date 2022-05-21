import 'package:crypto_freebie/base/base_controller.dart';
import 'package:crypto_freebie/models/pair/pair_summary/pair_summary.dart';
import 'package:get/get.dart';

import '../../models/markets/pair/pair.dart';

class PairTileController extends BaseController with StateMixin {
  final pairSummary = Rx<PairSummary?>(null);

  getFeed(Pair pair) async {
    change(null, status: RxStatus.loading());
    try {
      pairSummary(await provider.getPairSummary(
        pair.exchange,
        pair.pair,
      ));
      change(null, status: RxStatus.success());
    } on Exception catch (e) {
      change(null, status: RxStatus.error(e.toString().tr));
    }
  }
}
