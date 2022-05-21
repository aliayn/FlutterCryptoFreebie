import 'package:crypto_freebie/controllers/home/home_controller.dart';
import 'package:crypto_freebie/controllers/search/search_controller.dart';
import 'package:crypto_freebie/controllers/settings/settings_controller.dart';
import 'package:get/instance_manager.dart';

import '../components/ohlc_section.dart';
import '../components/order_book_section.dart';
import '../components/summary_section.dart';
import '../components/trades_section.dart';
import 'detail/detail_controller.dart';
import 'pairTile/pair_tile_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<SearchController>(() => SearchController());
    Get.lazyPut<SettingsController>(() => SettingsController());
    Get.lazyPut<PairTileController>(() => PairTileController());
     Get.lazyPut<DetailController>(() => DetailController());
    Get.create(() => SummarySectionController());
    Get.create(() => OHLCSectionController());
    Get.create(() => TradesSectionController());
    Get.create(() => OrderBookSectionController());
  }
}
