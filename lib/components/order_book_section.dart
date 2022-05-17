import 'package:crypto_freebie/base/base_controller.dart';
import 'package:crypto_freebie/components/error.dart';
import 'package:crypto_freebie/components/loading.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../locale/locale_keys.dart';
import '../models/markets/pair/pair.dart';
import '../models/orderbook/orderbook/orderbook.dart';

late final _controller = Get.find<OrderBookSectionController>();

Widget orderBookSection(Pair pair) {
  _controller.getOrderBook(pair);
  return _controller.obx(
      (data) => Builder(
          builder: (context) => Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          LocaleKeys.bid.tr,
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        Text(
                          LocaleKeys.ask.tr,
                          style: Theme.of(context).textTheme.subtitle2,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 220,
                      child: Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: ListView.builder(
                              itemCount: data!.bids.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 2),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        data.bids[index].amount.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1,
                                      ),
                                      Text(
                                        data.bids[index].price.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1,
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Flexible(
                            flex: 1,
                            child: ListView.builder(
                              itemCount: data.asks.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 2),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        data.asks[index].amount.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1,
                                      ),
                                      Text(
                                        data.asks[index].price.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1,
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
      onLoading: loading(),
      onError: error);
}

class OrderBookSectionController extends BaseController
    with StateMixin<OrderBook> {
  final cancelToken = CancelToken();
  getOrderBook(Pair pair) {
    change(null, status: RxStatus.loading());
    provider
        .getOrderBook(pair.exchange, pair.pair)
        .then((value) => change(value, status: RxStatus.success()))
        .catchError((error) {
      change(null, status: RxStatus.error(error.toString().tr));
    });
  }

  @override
  void onClose() {
    cancelToken.cancel();
    super.onClose();
  }
}
