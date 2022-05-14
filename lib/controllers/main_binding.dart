import 'package:crypto_freebie/controllers/home/home_controller.dart';
import 'package:crypto_freebie/controllers/main/main_controller.dart';
import 'package:crypto_freebie/controllers/settings/settings_controller.dart';
import 'package:get/instance_manager.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => SettingsController());
  }
}
