import 'package:crypto_freebie/components/order_book_section.dart';
import 'package:crypto_freebie/components/summary_section.dart';
import 'package:crypto_freebie/components/trades_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../locale/locale_keys.dart';
import '../models/graph/graph/graph.dart';
import '../models/markets/pair/pair.dart';
import '../models/pair/pair_summary/pair_summary.dart';
import 'ohlc_section.dart';

late final _controller = DetailsWidgetController();

Widget detailsWidget(Pair pair, [PairSummary? pairSummary, Graph? graph]) =>
    Builder(
        builder: (context) => Column(
              children: [
                TabBar(
                  labelColor: Theme.of(context).focusColor,
                  unselectedLabelColor: Theme.of(context).unselectedWidgetColor,
                  unselectedLabelStyle: Theme.of(context).textTheme.headline4,
                  labelStyle: Theme.of(context).textTheme.headline4,
                  indicatorWeight: 4,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Theme.of(context).focusColor,
                  isScrollable: true,
                  controller: _controller.tabController,
                  tabs: [
                    SizedBox(
                        width: 100, child: Tab(text: LocaleKeys.summary.tr)),
                    Tab(text: LocaleKeys.orderbook.tr),
                    Tab(text: LocaleKeys.trades.tr),
                    Tab(text: LocaleKeys.ohlc.tr),
                  ],
                ),
                SizedBox(
                  height: 300,
                  child: TabBarView(
                    controller: _controller.tabController,
                    children: [
                      summarySection(pair, pairSummary),
                      orderBookSection(pair),
                      tradesSection(pair),
                      oHLCSection(pair, graph),
                    ],
                  ),
                ),
              ],
            ));

class DetailsWidgetController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  DetailsWidgetController() {
    tabController = TabController(vsync: this, length: 4);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
