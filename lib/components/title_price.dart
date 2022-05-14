import 'package:auto_size_text/auto_size_text.dart';
import 'package:crypto_freebie/controllers/titlePrice/title_price_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/markets/pair/pair.dart';

Widget titlePrice({required Pair pair}) => GetX<TitlePriceController>(
    initState: ((state) => state.controller?.getPairSummery(pair)),
    builder: ((controller) {
      if (!controller.isLoading.value && controller.pairSummery.value != null) {
        var data = controller.pairSummery.value!;
        return Builder(
            builder: (context) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(pair.pair,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.headline2),
                    AutoSizeText(data.price.last.toString(),
                        maxLines: 1,
                        style: Theme.of(context).textTheme.headline1),
                      Row(children: [
                        AutoSizeText(
                            data.price.change.absolute.toStringAsFixed(5),
                            textAlign: TextAlign.start,
                            minFontSize: 0,
                            stepGranularity: 0.1,
                            maxLines: 1,
                            style: TextStyle(
                                color: data.price.change.absolute >= 0
                                    ? Colors.green
                                    : Colors.red,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    ?.fontSize,
                                fontWeight: FontWeight.w800)),
                        AutoSizeText(
                            ' (${data.price.change.percentage.toStringAsFixed(2)}%)',
                            textAlign: TextAlign.start,
                            minFontSize: 0,
                            stepGranularity: 0.1,
                            maxLines: 1,
                            style: Theme.of(context).textTheme.headline4),
                      ]),
                  ],
                ));
      } else if (controller.isLoading.value) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return Center(
          child: Text(controller.error.value.tr),
        );
      }
    }));