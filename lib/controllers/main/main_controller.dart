import 'package:crypto_freebie/base/base_controller.dart';
import 'package:get/get.dart';

class MainController extends BaseController {
  final tabIndex = 0.obs;

  changeTabIndex(int index) => tabIndex(index);
}
