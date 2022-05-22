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
import '../../locale/locale_keys.dart';
import '../../utils/keys.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.getFeed();
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
                              Padding(
                                padding: EdgeInsets.only(right: 2.w),
                                child: IconButton(
                                  icon: const Icon(
                                      CupertinoIcons.ellipsis_vertical),
                                  onPressed: () {},
                                ),
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
}
