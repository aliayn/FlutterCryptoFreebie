import 'package:crypto_freebie/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../utils/time.dart';

Widget timBarSelector() => Obx(
      () {
        timeDataProvider.value;
        return Builder(
            builder: (context) => Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(35))),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: timeList
                          .mapIndexed(
                            (e, i) => GestureDetector(
                              onTap: () {
                                timeDataProvider(e);
                              },
                              child: Container(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 16, top: 6, bottom: 6),
                                decoration: BoxDecoration(
                                    color: timeDataProvider.value.name == e.name
                                        ? HexColor.fromHex('#36454F')
                                        : Colors.transparent,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(35))),
                                child: Center(
                                  child: Text(
                                    e.name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .apply(
                                            color: timeDataProvider
                                                        .value.name ==
                                                    e.name
                                                ? CupertinoColors.white
                                                : CupertinoColors
                                                    .darkBackgroundGray),
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList()),
                ));
      },
    );

extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}
