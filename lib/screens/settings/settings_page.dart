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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          LocaleKeys.settingsTitle.tr,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Obx(
        () => Container(
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
                            subtitle: controller.pair.value.toUpperCase(),
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
      ),
    );
  }

  showLanguageSelectionDialog(context) => showDialog(
        context: context,
        builder: (context) => Dialog(
            // title: LocaleKeys.language.tr,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: Stack(children: [
              Container(
                padding: const EdgeInsets.only(
                    left: 20, top: 45 + 20, right: 20, bottom: 20),
                margin: const EdgeInsets.only(top: 45),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Theme.of(context)
                        .bottomNavigationBarTheme
                        .backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 10),
                          blurRadius: 10),
                    ]),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      LocaleKeys.language.tr,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      LocaleKeys.languageContent.tr,
                      style: const TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    ListTile(
                      leading: controller.language.value == LocaleKeys.english
                          ? const Icon(CupertinoIcons.check_mark)
                          : const SizedBox(),
                      title: Text(LocaleKeys.english.tr,
                          style: TextStyle(fontSize: 10.sp)),
                      onTap: () {
                        Navigator.pop(context);
                        controller.changeLanguage(LocaleKeys.english);
                      },
                    ),
                    ListTile(
                      leading: controller.language.value == LocaleKeys.spanish
                          ? const Icon(CupertinoIcons.check_mark)
                          : const SizedBox(),
                      title: Text(LocaleKeys.spanish.tr,
                          style: TextStyle(fontSize: 10.sp)),
                      onTap: () {
                        Navigator.pop(context);
                        controller.changeLanguage(LocaleKeys.spanish);
                      },
                    )
                  ],
                ),
              ),
              Positioned(
                left: 20,
                right: 20,
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 45,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(45)),
                      child: Image.asset("assets/icons/icon.png")),
                ),
              )
            ])),
      );

  showExchangeSelectDialog(context) async {
    var selectedId = 0;
    await showModalBottomSheet<int>(
        context: context,
        builder: (context) {
          return Container(
            color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
            height: 40.h,
            child: CupertinoPicker(
              backgroundColor:
                  Theme.of(context).bottomNavigationBarTheme.backgroundColor,
              onSelectedItemChanged: (index) {
                selectedId = index;
              },
              itemExtent: 50.0,
              children:
                  List<Widget>.generate(controller.exchanges.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    controller.exchanges[index].name,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                );
              }),
            ),
          );
        }).whenComplete(() {
      controller.changeExchange(controller.exchanges[selectedId]);
    });
  }

  showTopPairSelectDialog(context) async {
    var selectedId = 0;

    await showModalBottomSheet<int>(
        context: context,
        builder: (context) {
          return Container(
            color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
            height: 40.h,
            child: CupertinoPicker(
              backgroundColor:
                  Theme.of(context).bottomNavigationBarTheme.backgroundColor,
              onSelectedItemChanged: (index) {
                selectedId = index;
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
          );
        }).whenComplete(() {
      controller.changePair(controller.pairs[selectedId].pair);
    });
  }

  showThemeSelectDialog(context) => showDialog(
        context: context,
        builder: (context) => Dialog(
            // title: LocaleKeys.language.tr,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: Stack(children: [
              Container(
                padding: const EdgeInsets.only(
                    left: 20, top: 45 + 20, right: 20, bottom: 20),
                margin: const EdgeInsets.only(top: 45),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Theme.of(context)
                        .bottomNavigationBarTheme
                        .backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 10),
                          blurRadius: 10),
                    ]),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      LocaleKeys.appTheme.tr,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      LocaleKeys.appThemeContent.tr,
                      style: const TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    ListTile(
                      leading: !controller.themeMode.value
                          ? const Icon(CupertinoIcons.check_mark)
                          : const SizedBox(),
                      title: Text(LocaleKeys.light.tr,
                          style: TextStyle(fontSize: 10.sp)),
                      onTap: () {
                        Navigator.pop(context);
                        controller.switchTheme(false);
                      },
                    ),
                    ListTile(
                      leading: controller.themeMode.value
                          ? const Icon(CupertinoIcons.check_mark)
                          : const SizedBox(),
                      title: Text(LocaleKeys.dark.tr,
                          style: TextStyle(fontSize: 10.sp)),
                      onTap: () {
                        Navigator.pop(context);
                        controller.switchTheme(true);
                      },
                    )
                  ],
                ),
              ),
              Positioned(
                left: 20,
                right: 20,
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 45,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(45)),
                      child: Image.asset("assets/icons/icon.png")),
                ),
              )
            ])),
      );
}
