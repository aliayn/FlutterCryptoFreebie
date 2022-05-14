import 'package:auto_size_text/auto_size_text.dart';
import 'package:crypto_freebie/components/line_chart.dart';
import 'package:crypto_freebie/controllers/pairTile/pair_tile_controller.dart';
import 'package:crypto_freebie/models/markets/pair/pair.dart';
import 'package:crypto_freebie/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/keys.dart';
import '../utils/utils.dart';

Widget pairTile({required Pair pair}) => GetX<PairTileController>(
    init: Get.put(PairTileController()),
    initState: ((state) => state.controller?.getFeed(pair)),
    builder: ((controller) => Container(
        key: Keys.pairTile,
        child: GestureDetector(
          onTap: () {
            goToDetailPage(pair: pair);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 100,
            child: Builder(builder: ((context) {
              if (controller.pairSummaryLoading.value) {
                return _loadingWidget();
              } else if (controller.pairSummaryError.value != '') {
                return _errorWidget(controller.pairSummaryError.value);
              } else {
                var summary = controller.pairSummary.value!;
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        width: 80,
                        child: AutoSizeText(pair.pair,
                            textAlign: TextAlign.start,
                            minFontSize: 0,
                            stepGranularity: 0.1,
                            maxLines: 1,
                            style: Theme.of(context).textTheme.headline5),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          height: 50,
                          child: Builder(builder: (context) {
                            if (controller.graph.value != null) {
                              return lineChartWidget(
                                color: summary.price.change.absolute < 0
                                    ? Colors.red
                                    : const Color(0xff02d39a),
                                data: getPoints(controller.graph.value!),
                              );
                            } else if (controller.graphLoading.value) {
                              return lineChartWidget(loading: true);
                            } else {
                              return lineChartWidget(error: true);
                            }
                          })),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        padding: const EdgeInsets.only(top: 25, left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            AutoSizeText(
                              summary.price.last.toStringAsFixed(2),
                              minFontSize: 10,
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: AutoSizeText(
                                        summary.price.change.absolute
                                            .toStringAsFixed(5),
                                        textAlign: TextAlign.end,
                                        minFontSize: 0,
                                        stepGranularity: 0.1,
                                        maxLines: 1,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .apply(
                                                color: summary.price.change
                                                            .absolute >=
                                                        0
                                                    ? Colors.green
                                                    : Colors.red)),
                                  ),
                                  AutoSizeText(
                                      ' (${summary.price.change.percentage.toStringAsFixed(2)}%)',
                                      textAlign: TextAlign.end,
                                      minFontSize: 0,
                                      stepGranularity: 0.1,
                                      maxLines: 1,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6),
                                ]),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }
            })),
          ),
        ))));

_loadingWidget() => const Center(child: CircularProgressIndicator());

_errorWidget(value) => Center(child: Text(value));
