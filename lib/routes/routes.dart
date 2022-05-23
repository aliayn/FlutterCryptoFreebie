
import 'package:crypto_freebie/bindings/settings_binding.dart';
import 'package:crypto_freebie/screens/detail/detail_page.dart';
import 'package:crypto_freebie/screens/home/home_page.dart';
import 'package:crypto_freebie/screens/settings/settings_page.dart';
import 'package:get/route_manager.dart';

import '../bindings/detail_binding.dart';
import '../bindings/home_binding.dart';


abstract class Routes {
  static const home = '/';
  static const detail = '/detail';
  static const settings = '/settings';
}

abstract class AppPages {
  static String initial = Routes.home;
  static final routes = <GetPage>[
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.detail,
      page: () => const DetailPage(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
      binding: DetailBinding()
    ),
    GetPage(
      name: Routes.settings,
      page: () => const SettingsPage(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
      binding: SettingsBinding()
    ),
  ];
}
