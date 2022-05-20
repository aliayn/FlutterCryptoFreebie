import 'package:crypto_freebie/components/title_price.dart';
import 'package:crypto_freebie/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:uuid/uuid.dart';

import '../locale/locale_keys.dart';
import '../models/markets/favorite_pair/favorite_pair.dart';

Widget favoritePairWidget(final FavoritePair data) {
  const uuid = Uuid();
  final String _pairNameTag = uuid.v4();
  final String _pairPriceTag = uuid.v4();
  final String _pairChangeTag = uuid.v4();
  final String _pairChangePercentTag = uuid.v4();

  return Builder(
      builder: (context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            titlePrice(
                pair: data.pair,
                pairSummary: data.pairSummary,
                pairNameTag: _pairNameTag,
                pairPriceTag: _pairPriceTag,
                pairChangeTag: _pairChangeTag,
                pairChangePercentTag: _pairChangePercentTag),
            Container(
              margin: const EdgeInsets.only(top: 10),
              color: Theme.of(context).dividerColor,
              height: 1,
              width: double.infinity,
            ),
            InkWell(
              onTap: () => goToDetailPage(
                  pair: data.pair,
                  summary: data.pairSummary,
                  pairNameTag: _pairNameTag,
                  pairPriceTag: _pairPriceTag,
                  pairChangeTag: _pairChangeTag,
                  pairChangePercentTag: _pairChangePercentTag),
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
}
