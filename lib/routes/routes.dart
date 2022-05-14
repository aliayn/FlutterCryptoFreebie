import 'package:crypto_freebie/controllers/detail_binding.dart';
import 'package:crypto_freebie/screens/detail/detail_page.dart';
import 'package:crypto_freebie/screens/main/main_page.dart';
import 'package:get/route_manager.dart';

import '../controllers/main_binding.dart';

abstract class Routes {
  static const main = '/';
  static const detail = '/detail';
}

abstract class AppPages {
  static String initial = Routes.main;
  static final routes = <GetPage>[
    GetPage(
        name: Routes.main,
        page: () => const MainPage(),
        binding: MainBinding()),
    GetPage(
        name: Routes.detail,
        page: () => const DetailPage(),
        binding: DetailBinding()),
  ];
}
