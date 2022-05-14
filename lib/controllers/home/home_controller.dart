import 'package:crypto_freebie/base/base_controller.dart';
import 'package:crypto_freebie/database/storage.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../models/markets/favorite_pair/favorite_pair.dart';
import '../../models/markets/pair/pair.dart';

class HomeController extends BaseController {
  final _storage = Storage.instance;
  final _cancelToken = CancelToken();
  final favoritePair = Rx<FavoritePair?>(null);
  final favoriteLoading = false.obs;
  final favoriteError = ''.obs;

  final pairs = <Pair>[].obs;
  final pairsLoading = false.obs;
  final pairsError = ''.obs;

  @override
  void onReady() {
    getFavoritePair();
    getPairs();
    super.onReady();
  }

  getFavoritePair() async {
    favoriteLoading(true);
    var pairSummery = await provider
        .getPairSummary(
            _storage.getExchange(), _storage.getPair(), _cancelToken)
        .catchError((e) {
      favoriteError(e.toString());
    });
    favoritePair(
        FavoritePair(pair: _storage.getPair(), pairSummary: pairSummery));
    favoriteLoading(false);
  }

  getPairs() async {
    pairsLoading(true);
    pairs.assignAll(await provider
        .getPairs(_storage.getExchange(), _cancelToken)
        .catchError((e) {
      pairsError(e.toString());
    }));
    pairsLoading(true);
  }
}