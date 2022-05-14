import 'package:crypto_freebie/base/base_controller.dart';
import 'package:crypto_freebie/models/markets/pair/pair.dart';
import 'package:crypto_freebie/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class SearchController extends BaseController with StateMixin<List<Pair>> {
  final CancelToken _cancelToken = CancelToken();

  getPair() async {
    change(null, status: RxStatus.loading());
    try {
      final search = getSearchText();
      final pairs = await provider.getPairs(getExchange(), _cancelToken);
      List<Pair> list = [];
      if (search != "") {
        list = pairs.where((element) => element.pair.contains(search)).toList();
      } else {
        list = search;
      }
      change(list, status: RxStatus.success());
    } on Exception catch (e) {
      change(null, status: RxStatus.error(e.toString().tr));
    }
  }

  @override
  void onReady() {
    getPair();
    super.onReady();
  }

  @override
  void onClose() {
    _cancelToken.cancel();
    super.onClose();
  }
}
