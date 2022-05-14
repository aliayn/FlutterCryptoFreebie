import 'package:crypto_freebie/controllers/detail/detail_controller.dart';
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
    return Scaffold(
      key: Keys.detailScreen,
      appBar: AppBar(
        actions: [
          Container(
            width: 120,
            margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 5),
          )
        ],
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
                child: titlePrice(pair: pair)),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 250,
                child: controller.obx(
                    (state) => lineChartWidget(data: getPoints(state!)),
                    onLoading: lineChartWidget(loading: true),
                    onError: (error) => lineChartWidget(error: true))),
            const SizedBox(
              height: 20,
            ),
            timBarSelector(),
            const SizedBox(
              height: 15,
            ),
            detailsWidget(pair),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
