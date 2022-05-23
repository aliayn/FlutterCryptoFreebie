import 'package:crypto_freebie/components/error.dart';
import 'package:crypto_freebie/components/loading.dart';
import 'package:crypto_freebie/controllers/home/home_controller.dart';
import 'package:crypto_freebie/controllers/search/search_controller.dart';
import 'package:crypto_freebie/routes/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                              PopupMenuButton<int>(
                                offset: const Offset(0, 50),
                                shape: const TooltipShape(),
                                color: Theme.of(context).secondaryHeaderColor,
                                onSelected: onPopupMenuButtonItemSelected,
                                icon: const Icon(
                                    CupertinoIcons.ellipsis_vertical),
                                itemBuilder: (_) => <PopupMenuEntry<int>>[
                                  PopupMenuItem(
                                      value: 0,
                                      child: ListTile(
                                        leading: const Icon(
                                          CupertinoIcons.heart,
                                          size: 24,
                                        ),
                                        title:
                                            Text(LocaleKeys.favoriteTitle.tr),
                                      )),
                                  PopupMenuItem(
                                      value: 1,
                                      child: ListTile(
                                        leading: const Icon(
                                          CupertinoIcons.settings,
                                          size: 24,
                                        ),
                                        title:
                                            Text(LocaleKeys.settingsTitle.tr),
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
            return SizedBox.expand(
              child: Center(
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
              ),
            );
          }),
    );
  }

  onPopupMenuButtonItemSelected(int index) {
    switch (index) {
      case 1:
        goToSettingPage();
        break;
    }
  }
}
