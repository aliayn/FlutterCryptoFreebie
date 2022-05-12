import 'package:crypto_freebie/utils/keys.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../controllers/main/main_controller.dart';
import '../../generated/locale_keys.g.dart';
import '../home/home_page.dart';
import '../settings/settings_page.dart';

Widget mainUI() => GetX<MainController>(
    builder: ((controller) => Scaffold(
        bottomNavigationBar: _buildBottomNavigationMenu(controller),
        body: IndexedStack(
          index: controller.tabIndex.value,
          children: _buildScreens(),
        ))));

_buildScreens() => [
      const HomePage(),
      // const ExplorePage(),
      const SettingsPage(),
      const SettingsPage(),
    ];

_buildBottomNavigationMenu(controller) => Builder(
    builder: (context) => SizedBox(
          height: 11.h,
          child: BottomNavigationBar(
            key: Keys.navBar,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex.value,
            items: _navBarsItems(context),
          ),
        ));

_navBarsItems(context) => <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        label: LocaleKeys.homeTitle,
        icon: Container(
          margin: const EdgeInsets.only(bottom: 5),
          child: const Icon(
            CupertinoIcons.home,
            size: 20.0,
            key: Keys.navHome,
          ),
        ),
      ),
      BottomNavigationBarItem(
        label: LocaleKeys.searchTitle.tr,
        icon: Container(
          margin: const EdgeInsets.only(bottom: 5),
          child: const Icon(
            CupertinoIcons.search,
            size: 20.0,
            key: Keys.navSearch,
          ),
        ),
      ),
      BottomNavigationBarItem(
        label: LocaleKeys.settingsTitle.tr,
        icon: Container(
          margin: const EdgeInsets.only(bottom: 5),
          child: const Icon(
            CupertinoIcons.settings,
            size: 20.0,
            key: Keys.navSettings,
          ),
        ),
      ),
    ];
