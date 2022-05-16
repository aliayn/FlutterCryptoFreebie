import 'package:crypto_freebie/components/order_book_section.dart';
import 'package:crypto_freebie/components/summary_section.dart';
import 'package:crypto_freebie/components/trades_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../locale/locale_keys.dart';
import '../models/markets/pair/pair.dart';
import 'ohlc_section.dart';

late final DetailsWidgetController _controller =
    Get.put(DetailsWidgetController());

Widget detailsWidget(Pair pair) => Builder(
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
                  SizedBox(width: 100, child: Tab(text: LocaleKeys.summary.tr)),
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
                    summarySection(pair),
                    orderBookSection(pair),
                    tradesSection(pair),
                    oHLCSection(pair),
                  ],
                ),
              ),
            ],
          ));

class DetailsWidgetController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: 4);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
