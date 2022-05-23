import 'package:crypto_freebie/controllers/home/home_controller.dart';
import 'package:crypto_freebie/controllers/search/search_controller.dart';
import 'package:crypto_freebie/controllers/settings/settings_controller.dart';
import 'package:get/instance_manager.dart';

import '../controllers/pairTile/pair_tile_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<SearchController>(() => SearchController());
    Get.lazyPut<SettingsController>(() => SettingsController());
    Get.lazyPut<PairTileController>(() => PairTileController());
  }
}
