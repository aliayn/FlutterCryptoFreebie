import 'package:crypto_freebie/screens/main/main_page.dart';
import 'package:get/route_manager.dart';

import '../controllers/main/main_binding.dart';

abstract class Routes {
  static const main = '/';
}

abstract class AppPages {
  static String initial = Routes.main;
  static final routes = <GetPage>[
    GetPage(
        name: Routes.main,
        page: () => const MainPage(),
        binding: MainBinding()),
  ];
}
