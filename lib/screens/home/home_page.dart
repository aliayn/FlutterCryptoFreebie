import 'package:crypto_freebie/components/error.dart';
import 'package:crypto_freebie/components/loading.dart';
import 'package:crypto_freebie/controllers/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/favorite_pair.dart';
import '../../components/pair_tile.dart';
import '../../locale/locale_keys.dart';
import '../../utils/keys.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.getFeed();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          LocaleKeys.homeTitle.tr,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: controller.obx(((state) {
        var pairList = controller.pairs;
        return Container(
          key: Keys.homeScreen,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 190,
                      child: favoritePairWidget(controller.favoritePair!),
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
        );
      }), onLoading: loading(), onError: error),
    );
  }
}
