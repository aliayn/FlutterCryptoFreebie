import 'package:crypto_freebie/components/favorite_pair.dart';
import 'package:crypto_freebie/controllers/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/pair_tile.dart';
import '../../locale/locale_keys.dart';
import '../../utils/keys.dart';

Widget homeUI() => GetX<HomeController>(
    builder: ((controller) => Container(
          key: Keys.homeScreen,
          child: Column(
            children: [
              AppBar(
                toolbarHeight: 65,
                centerTitle: false,
                title: Text(
                  LocaleKeys.homeTitle.tr,
                  style: const TextStyle(color: Colors.white, fontSize: 25),
                ),
                actions: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    width: 45,
                    child: const Icon(
                      Icons.person_outline,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ],
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
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
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
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
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
        )));
