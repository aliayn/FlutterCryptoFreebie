import 'package:crypto_freebie/components/error.dart';
import 'package:crypto_freebie/components/loading.dart';
import 'package:crypto_freebie/controllers/home/home_controller.dart';
import 'package:crypto_freebie/controllers/search/search_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../components/favorite_pair.dart';
import '../../components/pair_tile.dart';
import '../../components/search_pair.dart';
import '../../components/tooltip_shape.dart';
import '../../locale/locale_keys.dart';
import '../../utils/keys.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx(
          ((state) {
            var pairList = controller.pairs;
            return SafeArea(
              child: Container(
                key: Keys.homeScreen,
                child: SingleChildScrollView(
                  child: Column(children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: 190,
                          child: favoritePairWidget(controller.favoritePair!),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(CupertinoIcons.search),
                                onPressed: () {
                                  showSearch(
                                    context: context,
                                    delegate: SearchPairDelegate(
                                        Get.find<SearchController>()),
                                  );
                                },
                              ),
                              PopupMenuButton(
                                offset: const Offset(0, 50),
                                shape: const TooltipShape(),
                                onSelected: (index) => onPopupMenuButtonItemSelected(index, context),
                                icon: const Icon(
                                    CupertinoIcons.ellipsis_vertical),
                                itemBuilder: (_) => <PopupMenuEntry>[
                                  PopupMenuItem(
                                      child: ListTile(
                                    leading: const Icon(
                                      CupertinoIcons.globe,
                                      size: 24,
                                    ),
                                    title: Text(LocaleKeys.language.tr),
                                  )),
                                  PopupMenuItem(
                                      child: ListTile(
                                    leading: const Icon(
                                      CupertinoIcons.arrow_2_circlepath,
                                      size: 24,
                                    ),
                                    title: Text(LocaleKeys.exchange.tr),
                                  )),
                                  PopupMenuItem(
                                      child: ListTile(
                                    leading: const Icon(
                                      CupertinoIcons.bitcoin,
                                      size: 24,
                                    ),
                                    title: Text(LocaleKeys.topPair.tr),
                                  )),
                                  PopupMenuItem(
                                      child: ListTile(
                                    leading: const Icon(
                                      CupertinoIcons.moon,
                                      size: 24,
                                    ),
                                    title: Text(LocaleKeys.appTheme.tr),
                                  )),
                                  PopupMenuItem(
                                      child: ListTile(
                                    leading: const Icon(
                                      CupertinoIcons.info,
                                      size: 24,
                                    ),
                                    title: Text(LocaleKeys.about.tr),
                                  )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.only(top: 0.0),
                        itemCount: pairList.length,
                        itemBuilder: (context, int index) {
                          return PairTile(pair: pairList[index]);
                        }),
                  ]),
                ),
              ),
            );
          }),
          onLoading: loading(),
          onError: (e) {
            return Center(
              child: Column(
                children: [
                  error(e),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: (() {
                        controller.getFeed();
                      }),
                      child: Text(LocaleKeys.tryAgain.tr),
                    ),
                  )
                ],
              ),
            );
          }),
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
          child: controller.exchangeList.isNotEmpty
              ? ListView.builder(
                  itemCount: controller.exchangeList.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      controller.changeExchange(
                          controller.exchangeList[index].symbol);
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
                                controller.exchangeList[index].name,
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
                    controller.changePrimaryPair(controller.pairs[index].pair);
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

  onPopupMenuButtonItemSelected(index, context) {
    switch (index) {
      case 0:
        showLanguageSelectionDialog(context);
        break;
      case 1:
        showExchangeSelectDialog(context);
        break;
      case 2:
        showTopPairSelectDialog(context);
        break;
      case 3:
        showThemeSelectDialog(context);
        break;
    }
  }
}
