import 'package:crypto_freebie/base/base_controller.dart';
import 'package:crypto_freebie/models/markets/pair/pair.dart';
import 'package:crypto_freebie/utils/utils.dart';
import 'package:get/get.dart';

class SearchController extends BaseController with StateMixin {
  var pairsList = <Pair>[];
  var usdtPairs = <Pair>[];
  var btcPairs = <Pair>[];
  var ethPairs = <Pair>[];
  var bnbPairs = <Pair>[];
  var busdPairs = <Pair>[];
  var futuresPairs = <Pair>[];
  var searchPairs = RxList<Pair>();

  @override
  void onReady() {
    getPair();
    super.onReady();
  }

  getPair() async {
    change(null, status: RxStatus.loading());
    try {
      pairsList = await provider.getPairs(getExchange());
      _sortPairsList(pairsList);

      change(null, status: RxStatus.success());
    } on Exception catch (e) {
      change(null, status: RxStatus.error(e.toString().tr));
    }
  }

  _sortPairsList(List<Pair> list) {
    usdtPairs = list.where((element) => element.pair.contains('usdt')).toList();
    btcPairs = list.where((element) => element.pair.contains('btc')).toList();
    ethPairs = list.where((element) => element.pair.contains('eth')).toList();
    bnbPairs = list.where((element) => element.pair.contains('bnb')).toList();
    busdPairs = list.where((element) => element.pair.contains('busd')).toList();
    futuresPairs =
        list.where((element) => element.pair.contains('futures')).toList();
  }

  addSearchQuery(String query) {
    searchPairs.value =
        pairsList.where((element) => element.pair.contains(query)).toList();
  }
}
