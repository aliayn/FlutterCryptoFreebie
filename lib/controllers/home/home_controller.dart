import 'package:crypto_freebie/base/base_controller.dart';
import 'package:crypto_freebie/utils/const.dart';
import 'package:get/get.dart';

import '../../models/markets/favorite_pair/favorite_pair.dart';
import '../../models/markets/pair/pair.dart';
import '../../utils/utils.dart';

class HomeController extends BaseController with StateMixin {
  FavoritePair? favoritePair;
  final pairs = <Pair>[];

  getFeed() async {
    change(null, status: RxStatus.loading());
    try {
      Pair pair = Pair(pair: getPair(), exchange: getExchange());
      var pairSummery = await provider.getPairSummary(getExchange(), getPair());
      var pairsList = await provider.getPairs(getExchange());
      favoritePair = (FavoritePair(pair: pair, pairSummary: pairSummery));
      _sortPairsList(pairsList);
    } on Exception catch (e) {
      change(null, status: RxStatus.error(e.toString().tr));
    }
  }

  _sortPairsList(List<Pair> list) {
    var usdtPairs = list
        .where((element) => coins.containsKey(element.pair.toString()))
        .toList();

    pairs.assignAll(usdtPairs);
    change(null, status: RxStatus.success());
  }
}
