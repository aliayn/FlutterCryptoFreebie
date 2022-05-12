import 'package:get/get.dart';

import '../providers/app_provider.dart';

class BaseController extends GetxController {
  final AppProvider _provider = Get.find<AppProvider>();
  AppProvider get provider => _provider;
}
