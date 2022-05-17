import 'package:crypto_freebie/base/base_controller.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../models/markets/favorite_pair/favorite_pair.dart';
import '../../models/markets/pair/pair.dart';
import '../../utils/utils.dart';

class HomeController extends BaseController with StateMixin {
  final _cancelToken = CancelToken();
  FavoritePair? favoritePair;
  final pairs = <Pair>[];

  getFeed() async {
    change(null, status: RxStatus.loading());
    try {
      Pair pair = Pair(pair: getPair(), exchange: getExchange());
      var pairSummery =
          await provider.getPairSummary(getExchange(), getPair(), _cancelToken);
      var pairsList = await provider.getPairs(getExchange(), _cancelToken);
      favoritePair = (FavoritePair(pair: pair, pairSummary: pairSummery));
      _sortPairsList(pairsList);
    } on Exception catch (e) {
      change(null, status: RxStatus.error(e.toString().tr));
    }
  }

  _sortPairsList(List<Pair> list) {
    var usdtPairs =
        list.where((element) => element.pair.contains('usdt')).toList();
    var btcPairs =
        list.where((element) => element.pair.contains('btc')).toList();
    var ethPairs =
        list.where((element) => element.pair.contains('eth')).toList();
    var bnbPairs =
        list.where((element) => element.pair.contains('bnb')).toList();
    var busdPairs =
        list.where((element) => element.pair.contains('busd')).toList();
    var futuresPairs =
        list.where((element) => element.pair.contains('futures')).toList();

    pairs.addAll(usdtPairs);
    pairs.addAll(btcPairs);
    pairs.addAll(ethPairs);
    pairs.addAll(bnbPairs);
    pairs.addAll(busdPairs);
    pairs.addAll(futuresPairs);
    change(null, status: RxStatus.success());
  }
}
