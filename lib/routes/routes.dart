import 'package:crypto_freebie/controllers/detail_binding.dart';
import 'package:crypto_freebie/screens/detail/detail_page.dart';
import 'package:crypto_freebie/screens/home/home_page.dart';
import 'package:get/route_manager.dart';

import '../controllers/home_binding.dart';

abstract class Routes {
  static const home = '/';
  static const detail = '/detail';
}

abstract class AppPages {
  static String initial = Routes.home;
  static final routes = <GetPage>[
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.detail,
      page: () => const DetailPage(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
      binding: DetailBinding()
    ),
  ];
}
