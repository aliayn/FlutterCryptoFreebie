import 'package:crypto_freebie/base/base_controller.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../models/markets/favorite_pair/favorite_pair.dart';
import '../../models/markets/pair/pair.dart';
import '../../utils/utils.dart';

class HomeController extends BaseController {
  final _cancelToken = CancelToken();
  final favoritePair = Rx<FavoritePair?>(null);
  final favoriteLoading = false.obs;
  final favoriteError = ''.obs;

  final pairs = <Pair>[].obs;
  final pairsLoading = false.obs;
  final pairsError = ''.obs;

  getFeed() {
    getFavoritePair();
    getPairs();
  }

  getFavoritePair() async {
    favoriteLoading(true);
    var pairSummery = await provider
        .getPairSummary(getExchange(), getPair(), _cancelToken)
        .catchError((e) {
      favoriteError(e.toString());
    });
    favoritePair(FavoritePair(pair: getPair(), pairSummary: pairSummery));
    favoriteLoading(false);
  }

  getPairs() async {
    pairsLoading(true);
    pairs.assignAll(
        await provider.getPairs(getExchange(), _cancelToken).catchError((e) {
      pairsError(e.toString());
    }));
    pairsLoading(true);
  }
}
