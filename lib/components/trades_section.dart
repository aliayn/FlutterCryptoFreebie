import 'package:crypto_freebie/base/base_controller.dart';
import 'package:crypto_freebie/components/error.dart';
import 'package:crypto_freebie/components/loading.dart';
import 'package:crypto_freebie/models/markets/pair/pair.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../locale/locale_keys.dart';
import '../models/trades/trade/trade.dart';
import '../utils/utils.dart';

late final TradesSectionController _controller =
    Get.put(TradesSectionController());

Widget tradesSection(Pair pair) {
  _controller.getTrades(pair);
  return _controller.obx(
      (data) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Builder(
                builder: (context) => Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                LocaleKeys.time.tr,
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                LocaleKeys.price.tr,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                LocaleKeys.amount.tr,
                                textAlign: TextAlign.right,
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        SizedBox(
                          height: 250,
                          child: ListView.builder(
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 2),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          epochToString(data![index].timestamp),
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          data[index].price,
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          data[index].amount,
                                          textAlign: TextAlign.right,
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1,
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ],
                    )),
          ),
      onLoading: loading(),
      onError: error);
}

class TradesSectionController extends BaseController
    with StateMixin<List<Trade>> {
  final cancelToken = CancelToken();

  getTrades(Pair pair) {
    change(null, status: RxStatus.loading());
    provider.getTrades(pair.exchange, pair.pair, cancelToken).then((value) {
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
