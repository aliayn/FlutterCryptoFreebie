import 'package:flutter/material.dart';

import '../utils/time.dart';

Widget timBarSelector() => Builder(
      builder: (context) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: timeList
                    .mapIndexed(
                      (e, i) => InkWell(
                        onTap: () {
                          timeDataProvider = e;
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 3, horizontal: 8),
                          decoration: BoxDecoration(
                              color: timeDataProvider.name == e.name
                                  ? Theme.of(context).cardColor
                                  : Colors.transparent,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5))),
                          child: Center(
                            child: Text(
                              e.name,
                              style: timeDataProvider.name == e.name
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

extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}
