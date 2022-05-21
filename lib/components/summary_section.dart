import 'dart:math';

import 'package:crypto_freebie/base/base_controller.dart';
import 'package:crypto_freebie/components/error.dart';
import 'package:crypto_freebie/components/loading.dart';
import 'package:crypto_freebie/models/markets/pair/pair.dart';
import 'package:crypto_freebie/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../locale/locale_keys.dart';
import '../models/pair/pair_summary/pair_summary.dart';

late final _controller = Get.find<SummarySectionController>();

Widget summarySection(Pair pair, [PairSummary? pairSummary]) {
  _controller.getPairSummary(pair, pairSummary);
  return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Builder(
          builder: (context) => _controller.obx(
              (data) => Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            LocaleKeys.price.tr,
                            style: Theme.of(context).textTheme.subtitle2,
                          )
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            LocaleKeys.last.tr,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Text(
                            formatNumbers(data!.price.last,decimalDigits: 4),
                            style: Theme.of(context).textTheme.subtitle1,
                          )
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            LocaleKeys.high.tr,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Text(
                            formatNumbers(data.price.high,decimalDigits: 4),
                            style: Theme.of(context).textTheme.subtitle1,
                          )
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            LocaleKeys.low.tr,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Text(
                            formatNumbers(data.price.low,decimalDigits: 4),
                            style: Theme.of(context).textTheme.subtitle1,
                          )
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            LocaleKeys.change.tr,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Text(
                            formatNumbers(data.price.change.absolute,decimalDigits: 5),
                            style: Theme.of(context).textTheme.subtitle1,
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            LocaleKeys.volume.tr,
                            style: Theme.of(context).textTheme.subtitle2,
                          )
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            LocaleKeys.volume.tr,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Text(
                            '${formatNumbers(data.volume/pow(10, 6))}M',
                            style: Theme.of(context).textTheme.subtitle1,
                          )
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            LocaleKeys.quoteVolume.tr,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Text(
                            '${formatNumbers(data.volumeQuote/pow(10, 6))}M',
                            style: Theme.of(context).textTheme.subtitle1,
                          )
                        ],
                      ),
                    ],
                  ),
              onLoading: loading(),
              onError: error)));
}

class SummarySectionController extends BaseController
    with StateMixin<PairSummary> {
  getPairSummary(Pair pair, [PairSummary? pairSummary]) {
    if (pairSummary != null) {
      change(pairSummary, status: RxStatus.success());
    }
    change(null, status: RxStatus.loading());
    provider.getPairSummary(pair.exchange, pair.pair).then((value) {
      change(value, status: RxStatus.success());
    }).catchError((error) {
      change(null, status: RxStatus.error(error.toString().tr));
    });
  }
}
