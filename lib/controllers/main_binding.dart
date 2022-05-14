import 'package:crypto_freebie/controllers/home/home_controller.dart';
import 'package:crypto_freebie/controllers/main/main_controller.dart';
import 'package:crypto_freebie/controllers/search/search_controller.dart';
import 'package:crypto_freebie/controllers/settings/settings_controller.dart';
import 'package:get/instance_manager.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<SearchController>(() => SearchController());
    Get.lazyPut<SettingsController>(() => SettingsController());
  }
}
