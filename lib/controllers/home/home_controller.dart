import 'package:crypto_freebie/base/base_controller.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../models/markets/favorite_pair/favorite_pair.dart';
import '../../models/markets/pair/pair.dart';
import '../../utils/utils.dart';

class HomeController extends BaseController with StateMixin {
  final _cancelToken = CancelToken();
  final favoritePair = Rx<FavoritePair?>(null);
  final pairs = RxList<Pair>();

  getFeed() async {
    change(null, status: RxStatus.loading());
    try {
      Pair pair = Pair(pair: getPair(), exchange: getExchange());
      var pairSummery =
          await provider.getPairSummary(getExchange(), getPair(), _cancelToken);
      pairs.assignAll(await provider.getPairs(getExchange(), _cancelToken));
      favoritePair(FavoritePair(pair: pair, pairSummary: pairSummery));
      change(null, status: RxStatus.success());
    } on Exception catch (e) {
      change(null, status: RxStatus.error(e.toString().tr));
    }
  }
}
