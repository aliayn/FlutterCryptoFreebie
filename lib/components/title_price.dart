import 'package:auto_size_text/auto_size_text.dart';
import 'package:crypto_freebie/components/error.dart';
import 'package:crypto_freebie/components/loading.dart';
import 'package:crypto_freebie/controllers/titlePrice/title_price_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../models/markets/pair/pair.dart';

late final TitlePriceController _controller = Get.put(TitlePriceController());

Widget titlePrice({required Pair pair}) {
  _controller.getPairSummery(pair);
  return _controller.obx(
      (data) => Builder(
          builder: (context) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(pair.pair.toUpperCase(),
                      maxLines: 1, style: TextStyle(fontSize: 24.sp)),
                  AutoSizeText(data!.price.last.toString(),
                      maxLines: 1, style: TextStyle(fontSize: 20.sp)),
                  Row(children: [
                    AutoSizeText(data.price.change.absolute.toStringAsFixed(5),
                        textAlign: TextAlign.start,
                        minFontSize: 0,
                        stepGranularity: 0.1,
                        maxLines: 1,
                        style: TextStyle(
                            color: data.price.change.absolute >= 0
                                ? Colors.green
                                : Colors.red,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w800)),
                    AutoSizeText(
                        ' (${data.price.change.percentage.toStringAsFixed(2)}%)',
                        textAlign: TextAlign.start,
                        minFontSize: 0,
                        stepGranularity: 0.1,
                        maxLines: 1,
                        style: TextStyle(fontSize: 14.sp)),
                  ]),
                ],
              )),
      onLoading: loading(),
      onError: error);
}
