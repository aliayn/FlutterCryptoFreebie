import 'package:crypto_freebie/controllers/settings/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:sizer/sizer.dart';

import '../../locale/locale_keys.dart';
import '../../models/markets/pair/pair.dart';
import '../../utils/keys.dart';

class SettingsPage extends GetView<SettingsController> {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.init();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          LocaleKeys.settingsTitle.tr,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Container(
        key: Keys.settingsScreen,
        child: Column(
          children: [
            Expanded(
              child: SettingsList(
                contentPadding: EdgeInsets.zero,
                sections: [
                  SettingsSection(
                    title: LocaleKeys.languageSection.tr,
                    tiles: [
                      SettingsTile(
                          title: LocaleKeys.language.tr,
                          subtitle: controller.language.value.tr,
                          leading: const Icon(
                            CupertinoIcons.globe,
                            size: 24,
                          ),
                          onPressed: (context) =>
                              showLanguageSelectionDialog(context)),
                    ],
                  ),
                  SettingsSection(
                    title: LocaleKeys.dataSection.tr,
                    tiles: [
                      SettingsTile(
                        title: LocaleKeys.exchange.tr,
                        subtitle: controller.exchange.value,
                        leading: const Icon(
                          CupertinoIcons.arrow_2_circlepath,
                          size: 24,
                        ),
                        onPressed: (context) =>
                            showExchangeSelectDialog(context),
                      ),
                      SettingsTile(
                          title: LocaleKeys.topPair.tr,
                          subtitle: controller.pair.value.tr,
                          leading: const Icon(
                            CupertinoIcons.bitcoin,
                            size: 24,
                          ),
                          onPressed: (context) =>
                              showTopPairSelectDialog(context)),
                    ],
                  ),
                  SettingsSection(
                    title: LocaleKeys.designSection.tr,
                    tiles: [
                      SettingsTile(
                        title: LocaleKeys.appTheme.tr,
                        subtitle: controller.themeMode.value
                            ? LocaleKeys.dark.tr
                            : LocaleKeys.light.tr,
                        leading: const Icon(
                          CupertinoIcons.moon,
                          size: 24,
                        ),
                        onPressed: (context) =>
                            showThemeSelectDialog(context),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  showLanguageSelectionDialog(context) => Get.defaultDialog(
      title: LocaleKeys.language.tr,
      content: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListTile(
                leading: const Icon(CupertinoIcons.flag),
                title: Text(LocaleKeys.english.tr,
                    style: TextStyle(fontSize: 14.sp)),
                onTap: () {
                  controller.setLanguage('en');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.flag_fill),
                title: Text(LocaleKeys.spanish.tr,
                    style: TextStyle(fontSize: 14.sp)),
                onTap: () {
                  controller.setLanguage('es');
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ));

  showExchangeSelectDialog(context) => Get.bottomSheet(
        Container(
          color: Theme.of(context).backgroundColor,
          child: controller.exchanges.isNotEmpty
              ? ListView.builder(
                  itemCount: controller.exchanges.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      controller
                          .setExchange(controller.exchanges[index].symbol);
                      Get.back();
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                controller.exchanges[index].name,
                                style: TextStyle(fontSize: 14.sp),
                              ),
                            ),
                            const Divider()
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              : Center(
                  child: Text(
                  LocaleKeys.errorSomethingWentWrong.tr,
                  style: TextStyle(fontSize: 18.sp),
                )),
        ),
      );

  showTopPairSelectDialog(context) {
    Pair item = controller.pairs[0];
    Get.bottomSheet(Container(
      color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
      height: 40.h,
      child: Column(
        children: [
          SizedBox(
            width: 100.w,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: (() {
                    controller.setPair(item.pair);
                    Get.back();
                  }),
                  child: Text('Done',
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.headline4),
                ),
              ),
            ),
          ),
          Expanded(
            child: CupertinoPicker(
              backgroundColor:
                  Theme.of(context).bottomNavigationBarTheme.backgroundColor,
              onSelectedItemChanged: (index) {
                item = controller.pairs[index];
              },
              itemExtent: 50.0,
              children: List<Widget>.generate(controller.pairs.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    controller.pairs[index].pair.toUpperCase(),
                    style: Theme.of(context).textTheme.headline3,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    ));
  }

  showThemeSelectDialog(context) => Get.defaultDialog(
      title: LocaleKeys.appTheme.tr,
      content: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListTile(
                leading: const Icon(CupertinoIcons.lightbulb_fill),
                title: Text(LocaleKeys.light.tr),
                onTap: () {
                  controller.switchTheme(false);
                  Get.back();
                },
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.lightbulb),
                title: Text(LocaleKeys.dark.tr),
                onTap: () {
                  controller.switchTheme(true);
                  Get.back();
                },
              )
            ],
          ),
        ),
      ));
}
