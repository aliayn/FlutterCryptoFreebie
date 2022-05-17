import 'package:crypto_freebie/controllers/settings/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:sizer/sizer.dart';

import '../../locale/locale_keys.dart';
import '../../utils/keys.dart';

class SettingsPage extends GetView<SettingsController> {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.init();
    return Container(
      key: Keys.settingsScreen,
      child: Column(
        children: [
          AppBar(
            title: Text(
              LocaleKeys.settingsTitle.tr,
              style: const TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
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
                      onPressed: (context) => showExchangeSelectDialog(context),
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
                      onPressed: (context) => showThemeSelectDialog(context),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
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

  showTopPairSelectDialog(context) => Get.bottomSheet(Container(
        color: Theme.of(context).backgroundColor,
        child: controller.pairs.isNotEmpty
            ? ListView.builder(
                itemCount: controller.pairs.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    controller.setPair(controller.pairs[index].pair);
                    Get.back();
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(controller.pairs[index].pair,
                                style: TextStyle(fontSize: 14.sp)),
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
      ));

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
