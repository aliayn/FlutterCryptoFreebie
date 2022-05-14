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
    return Container(
      key: Keys.homeScreen,
      child: Column(
        children: [
          AppBar(
            centerTitle: true,
            title: Text(
              LocaleKeys.homeTitle.tr,
              style: const TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 190,
                  child: Builder(
                    builder: (context) {
                      if (!controller.favoriteLoading.value &&
                          controller.favoritePair.value != null) {
                        var data = controller.favoritePair.value!;
                        return favoritePairWidget(data);
                      } else if (controller.favoriteLoading.value) {
                        return loading();
                      } else {
                        return Center(
                          child: Text(controller.favoriteError.value.tr),
                        );
                      }
                    },
                  ),
                ),
                Expanded(
                  child: Builder(builder: ((context) {
                    if (!controller.pairsLoading.value) {
                      var pairsList = controller.pairs;
                      return ListView.builder(
                          padding: const EdgeInsets.only(top: 0.0),
                          itemCount: pairsList.length,
                          itemBuilder: (context, int index) {
                            return pairTile(pair: pairsList[index]);
                          });
                    } else if (controller.pairsLoading.value) {
                      return loading();
                    } else {
                      return Center(
                        child: Text(controller.pairsError.value.tr),
                      );
                    }
                  })),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
