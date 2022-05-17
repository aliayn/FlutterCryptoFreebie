import 'package:crypto_freebie/components/title_price.dart';
import 'package:crypto_freebie/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../locale/locale_keys.dart';
import '../models/markets/favorite_pair/favorite_pair.dart';

Widget favoritePairWidget(final FavoritePair data) => Builder(
    builder: (context) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),
              titlePrice(pair: data.pair, pairSummary: data.pairSummary),
              Container(
                margin: const EdgeInsets.only(top: 10),
                color: Theme.of(context).dividerColor,
                height: 1,
                width: double.infinity,
              ),
              InkWell(
                onTap: () =>
                    goToDetailPage(pair: data.pair, summary: data.pairSummary),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add_chart,
                        size: 30,
                        color: Theme.of(context).iconTheme.color,
                      ),
                      const SizedBox(width: 10),
                      Text(LocaleKeys.openChart.tr,
                          style: TextStyle(fontSize: 14.sp)),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                color: Theme.of(context).dividerColor,
                height: 1,
                width: double.infinity,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
