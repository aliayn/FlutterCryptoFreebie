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
import '../../utils/keys.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.getFeed();
    return Scaffold(
      body: controller.obx(((state) {
        var pairList = controller.pairs;
        var height = MediaQuery.of(context).viewPadding.top;
        return Container(
          key: Keys.homeScreen,
          child: Padding(
            padding: EdgeInsets.only(top: height),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 190,
                              child:
                                  favoritePairWidget(controller.favoritePair!),
                            ),
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
                                    icon: const Icon(CupertinoIcons.ellipsis_vertical),
                                    onPressed: () {
                                      
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: ListView.builder(
                            padding: const EdgeInsets.only(top: 0.0),
                            itemCount: pairList.length,
                            itemBuilder: (context, int index) {
                              return PairTile(pair: pairList[index]);
                            }),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }), onLoading: loading(), onError: error),
    );
  }
}
