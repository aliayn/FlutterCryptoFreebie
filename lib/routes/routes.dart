import 'package:get/route_manager.dart';
import '../screens/home/home_page.dart';

abstract class Routes {
  static const splash = '/';
  static const home = '/home';
}

abstract class AppPages {
  static String initial = Routes.home;
  static final routes = <GetPage>[
    // GetPage(
    //   name: Routes.splash,
    //   page: () => const SplashScreen(),
    //   binding: SplashBinding(),
    // ),
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
    ),
  ];
}
