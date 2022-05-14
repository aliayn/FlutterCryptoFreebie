import 'package:crypto_freebie/base/base_controller.dart';
import 'package:crypto_freebie/components/error.dart';
import 'package:crypto_freebie/components/loading.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_candlesticks/flutter_candlesticks.dart';
import 'package:get/get.dart';

import '../models/graph/graph/graph.dart';
import '../models/markets/pair/pair.dart';
import '../utils/time.dart';

late final OHLCSectionController _controller = Get.put(OHLCSectionController());

Widget oHLCSection(Pair pair) {
  _controller.getGraph(pair);
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
    child: _controller.obx(
        (data) => OHLCVGraph(
            data: data!.pairs[0].points
                .map((e) => {
                      "open": e.openTime,
                      "high": e.highPrice,
                      "low": e.lowPrice,
                      "close": e.closePrice,
                      "volumeto": e.volume
                    })
                .toList(),
            enableGridLines: true,
            volumeProp: 0.2,
            gridLineAmount: 5,
            gridLineColor: Colors.grey[300]!,
            gridLineLabelColor: Colors.grey),
        onLoading: loading(),
        onError: error),
  );
}

class OHLCSectionController extends BaseController with StateMixin<Graph> {
  final cancelToken = CancelToken();
  getGraph(Pair pair) {
    change(null, status: RxStatus.loading());
    String interval = timeDataProvider.periods;
    String fromHours = timeDataProvider.before;
    String before = "";
    if (fromHours.isNotEmpty) {
      before = (DateTime.now()
                  .subtract(Duration(hours: int.parse(fromHours)))
                  .toUtc()
                  .millisecondsSinceEpoch ~/
              1000)
          .toString();
    }

     provider
        .getPairGraph(pair.exchange, pair.pair,
            periods: interval, before: before)
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
