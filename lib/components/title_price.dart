import 'package:auto_size_text/auto_size_text.dart';
import 'package:crypto_freebie/models/pair/pair_summary/pair_summary.dart';
import 'package:crypto_freebie/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../models/markets/pair/pair.dart';

Widget titlePrice({
  required Pair pair,
  required PairSummary pairSummary,
  required String pairNameTag,
  required String pairPriceTag,
  required String pairChangeTag,
  required String pairChangePercentTag,
}) {
  return Builder(
      builder: (context) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: pairNameTag,
                child: AutoSizeText(pair.pair.toUpperCase(),
                    maxLines: 1, style: TextStyle(fontSize: 24.sp)),
              ),
              Hero(
                tag: pairPriceTag,
                child: AutoSizeText(formatNumbers(pairSummary.price.last),
                    maxLines: 1, style: TextStyle(fontSize: 20.sp)),
              ),
              Row(children: [
                Hero(
                  tag: pairChangeTag,
                  child: AutoSizeText(
                      formatNumbers(pairSummary.price.change.absolute,
                          decimalDigits: 3),
                      textAlign: TextAlign.start,
                      minFontSize: 0,
                      stepGranularity: 0.1,
                      maxLines: 1,
                      style: TextStyle(
                          color: pairSummary.price.change.absolute >= 0
                              ? Colors.green
                              : Colors.red,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w800)),
                ),
                Hero(
                  tag: pairChangePercentTag,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: AutoSizeText(
                        ' (${formatPercentNumber(pairSummary.price.change.percentage)})',
                        textAlign: TextAlign.start,
                        minFontSize: 0,
                        stepGranularity: 0.1,
                        maxLines: 1,
                        style: TextStyle(fontSize: 14.sp)),
                  ),
                ),
              ]),
            ],
          ));
}
