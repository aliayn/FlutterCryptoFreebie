import 'package:crypto_freebie/controllers/main/main_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sizer/sizer.dart';

import '../../locale/locale_keys.dart';
import '../home/home_page.dart';
import '../settings/settings_page.dart';

class MainPage extends GetView<MainController> {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Scaffold(
        extendBody: true,
        body: HomePage(),
      );

  _buildGNav(context) => AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 12.h,
        child: Wrap(children: [
          Padding(
            padding: EdgeInsets.only(bottom: 6.h, right: 8.w, left: 8.w),
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context)
                      .bottomNavigationBarTheme
                      .backgroundColor!,
                  borderRadius: const BorderRadius.all(Radius.circular(30))),
              width: double.maxFinite,
              height: 8.h,
              child: GNav(
                gap: 8,
                activeColor: Theme.of(context)
                    .bottomNavigationBarTheme
                    .selectedItemColor,
                iconSize: 24,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: const Duration(milliseconds: 400),
                color: Theme.of(context)
                    .bottomNavigationBarTheme
                    .unselectedItemColor,
                tabs: [
                  GButton(
                    icon: CupertinoIcons.home,
                    text: LocaleKeys.homeTitle.tr,
                  ),
                  GButton(
                    icon: CupertinoIcons.search,
                    text: LocaleKeys.searchTitle.tr,
                  ),
                  GButton(
                    icon: CupertinoIcons.settings,
                    text: LocaleKeys.settingsTitle.tr,
                  ),
                ],
                selectedIndex: controller.tabIndex.value,
                onTabChange: controller.changeTabIndex,
              ),
            ),
          ),
        ]),
      );
}
