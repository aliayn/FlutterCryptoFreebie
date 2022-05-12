import 'package:crypto_freebie/controllers/settings/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../locale/locale_keys.dart';
import '../../utils/const.dart';
import '../../utils/keys.dart';

Widget settingsUI() => _buildBody();

_buildBody() => GetX<SettingsController>(
    initState: ((state) => state.controller?.init()),
    builder: ((SettingsController controller) {
      return Container(
        key: Keys.settingsScreen,
        child: Column(
          children: [
            AppBar(
              title: Text(
                LocaleKeys.settingsTitle.tr,
              ),
            ),
            Expanded(
              child: SettingsList(
                contentPadding: EdgeInsets.zero,
                sections: [
                  SettingsSection(
                    title: Text(LocaleKeys.languageSection.tr),
                    tiles: [
                      SettingsTile(
                          title: Text(LocaleKeys.language.tr),
                          description: Text(controller.language.value.tr),
                          leading: const FaIcon(FontAwesomeIcons.globe),
                          onPressed: (context) =>
                              showLanguageSelectionDialog(controller, context)),
                    ],
                  ),
                  SettingsSection(
                    title: Text(LocaleKeys.dataSection.tr),
                    tiles: [
                      SettingsTile(
                        title: Text(LocaleKeys.exchange.tr),
                        description: Text(controller.exchange.value),
                        leading: const FaIcon(FontAwesomeIcons.cashRegister),
                        onPressed: (BuildContext context) =>
                            showExchangeSelectDialog(controller, context),
                      ),
                      SettingsTile(
                          title: Text(LocaleKeys.topPair.tr),
                          description: Text(controller.pair.value.tr),
                          leading: const FaIcon(FontAwesomeIcons.dollarSign),
                          onPressed: (BuildContext context) =>
                              showTopPairSelectDialog(controller, context)),
                    ],
                  ),
                  SettingsSection(
                    title: Text(LocaleKeys.designSection.tr),
                    tiles: [
                      SettingsTile(
                        title: Text(LocaleKeys.appTheme.tr),
                        description: Text(controller.themeMode.value
                            ? LocaleKeys.dark.tr
                            : LocaleKeys.light.tr),
                        leading: const FaIcon(FontAwesomeIcons.moon),
                        onPressed: (BuildContext context) =>
                            showThemeSelectDialog(controller, context),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }));

void showLanguageSelectionDialog(SettingsController controller, context) {
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      title: Text(LocaleKeys.language.tr),
      content: SizedBox(
        height: 100,
        child: Column(
          children: [
            Row(
              children: [
                Radio<String>(
                  value: controller.language.value,
                  groupValue: LocaleKeys.english,
                  onChanged: (value) async {
                    controller.setLanguage('en');
                    Navigator.pop(context);
                  },
                ),
                Text(
                  LocaleKeys.english.tr,
                  style: const TextStyle(fontSize: 18),
                )
              ],
            ),
            Row(
              children: [
                Radio<String>(
                  value: controller.language.value,
                  groupValue: LocaleKeys.spanish,
                  onChanged: (value) async {
                    controller.setLanguage('es');
                    Navigator.pop(context);
                  },
                ),
                Text(
                  LocaleKeys.spanish.tr,
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

showExchangeSelectDialog(SettingsController controller, context) => showDialog(
    context: context,
    builder: (context) => AlertDialog(
          content: SizedBox(
            height: 300,
            width: 200,
            child: ListView.builder(
              itemCount: controller.exchanges.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  controller.setExchange(controller.exchanges[index].symbol);
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: Text(
                    controller.exchanges[index].name,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ));

showTopPairSelectDialog(SettingsController controller, context) => showDialog(
    context: context,
    builder: (context) => AlertDialog(
          content: SizedBox(
            height: 300,
            width: 200,
            child: ListView.builder(
              itemCount: controller.pairs.length,
              itemBuilder: (context, index) => Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.setPair(controller.pairs[index].pair);
                      Get.back();
                      //Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Text(controller.pairs[index].pair,
                          style: const TextStyle(fontSize: 18)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));

showThemeSelectDialog(SettingsController controller, context) => showDialog(
    context: context,
    builder: (context) => AlertDialog(
          content: SizedBox(
            height: 150,
            child: Column(
              children: themeModes
                  .map((data) => GestureDetector(
                        onTap: () {
                          controller.switchTheme();
                          Navigator.pop(context);
                        },
                        child: Row(
                          children: [
                            Radio<String>(
                              onChanged: (value) {
                                controller.switchTheme();
                                Navigator.pop(context);
                              },
                              value: data,
                              groupValue: controller.themeMode.value
                                  ? LocaleKeys.dark.tr
                                  : LocaleKeys.light.tr,
                            ),
                            Text(data, style: const TextStyle(fontSize: 18))
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
        ));
