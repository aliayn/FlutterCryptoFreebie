import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../utils/time.dart';

Widget timBarSelector() => Obx(
      () {
        var timeData = timeDataProvider.value;
        return Builder(
            builder: (context) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: timeList
                          .mapIndexed(
                            (e, i) => InkWell(
                              onTap: () {
                                timeDataProvider(e);
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 3, horizontal: 8),
                                decoration: BoxDecoration(
                                    color: timeData.name == e.name
                                        ? Theme.of(context).cardColor
                                        : Colors.transparent,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5))),
                                child: Center(
                                  child: Text(
                                    e.name,
                                    style: timeData.name == e.name
                                        ? Theme.of(context)
                                            .textTheme
                                            .headline3!
                                            .apply(color: Colors.white)
                                        : Theme.of(context).textTheme.headline4,
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
