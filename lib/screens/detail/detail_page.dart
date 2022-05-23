import 'package:crypto_freebie/controllers/detail/detail_controller.dart';
import 'package:crypto_freebie/models/graph/graph/graph.dart';
import 'package:crypto_freebie/models/pair/pair_summary/pair_summary.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/details_widget.dart';
import '../../components/line_chart.dart';
import '../../components/time_bar_selector.dart';
import '../../components/title_price.dart';
import '../../models/markets/pair/pair.dart';
import '../../utils/keys.dart';
import '../../utils/utils.dart';

class DetailPage extends GetView<DetailController> {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Pair pair = Get.arguments[0];
    final PairSummary pairSummary = Get.arguments[1];
    final Graph? graph = Get.arguments[2];

    final String _pairNameTag = Get.arguments[3];
    final String _pairPriceTag = Get.arguments[4];
    final String _pairChangeTag = Get.arguments[5];
    final String _pairChangePercentTag = Get.arguments[6];

    controller.getFeed(pair, graph);
    return Scaffold(
      key: Keys.detailScreen,
      appBar: AppBar(
        title: Hero(
          tag: _pairNameTag,
          child: Material(
            type: MaterialType.transparency,
            child: Text(
              pair.pair.toUpperCase(),
              style: const TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: titlePrice(
                    pair: pair,
                    hasTitle: false,
                    pairSummary: pairSummary,
                    pairNameTag: _pairNameTag,
                    pairPriceTag: _pairPriceTag,
                    pairChangeTag: _pairChangeTag,
                    pairChangePercentTag: _pairChangePercentTag)),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 250,
                child: controller.obx(
                    (state) =>
                        lineChartWidget(data: getPoints(state!), expand: true),
                    onLoading: lineChartWidget(loading: true),
                    onError: (error) => lineChartWidget(error: true))),
            const SizedBox(
              height: 20,
            ),
            timBarSelector(),
            const SizedBox(
              height: 15,
            ),
            detailsWidget(pair, pairSummary, graph),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
