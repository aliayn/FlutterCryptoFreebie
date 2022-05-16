import 'package:crypto_freebie/base/base_controller.dart';
import 'package:crypto_freebie/components/error.dart';
import 'package:crypto_freebie/components/loading.dart';
import 'package:crypto_freebie/models/markets/pair/pair.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../locale/locale_keys.dart';
import '../models/pair/pair_summary/pair_summary.dart';

late final SummarySectionController _controller =
    Get.put(SummarySectionController());

Widget summarySection(Pair pair) {
  _controller.getPairSummary(pair);
  return _controller.obx(
      (data) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Builder(
                builder: (context) => Column(
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
                              data!.price.last.toString(),
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
                              data.price.high.toString(),
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
                              data.price.low.toString(),
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
                              data.price.change.absolute.toString(),
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
                              data.volume.toString(),
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
                              data.volumeQuote.toString(),
                              style: Theme.of(context).textTheme.subtitle1,
                            )
                          ],
                        ),
                      ],
                    )),
          ),
      onLoading: loading(),
      onError: error);
}

class SummarySectionController extends BaseController
    with StateMixin<PairSummary> {
  final cancelToken = CancelToken();

  getPairSummary(Pair pair) {
    change(null, status: RxStatus.loading());
    provider
        .getPairSummary(pair.exchange, pair.pair, cancelToken)
        .then((value) {
      change(value, status: RxStatus.success());
    }).catchError((error) {
      change(null, status: RxStatus.error(error.toString().tr));
    });
  }

  @override
  void onClose() {
    cancelToken.cancel();
    super.onClose();
  }
}
