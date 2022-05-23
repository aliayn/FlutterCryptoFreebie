import 'dart:math';

import 'package:crypto_freebie/components/error.dart';
import 'package:crypto_freebie/components/loading.dart';
import 'package:crypto_freebie/controllers/pairTile/pair_tile_controller.dart';
import 'package:crypto_freebie/models/markets/pair/pair.dart';
import 'package:crypto_freebie/routes/router.dart';
import 'package:crypto_freebie/utils/const.dart';
import 'package:crypto_freebie/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:uuid/uuid.dart';

import '../models/pair/pair_summary/pair_summary.dart';
import '../utils/keys.dart';

class PairTile extends StatefulWidget {
  final Pair pair;
  const PairTile({Key? key, required this.pair}) : super(key: key);

  @override
  State<PairTile> createState() => _PairTileState();
}

class _PairTileState extends State<PairTile>
    with AutomaticKeepAliveClientMixin {
  final PairTileController controller = PairTileController();
  static const uuid = Uuid();
  final String _pairNameTag = uuid.v4();
  final String _pairPriceTag = uuid.v4();
  final String _pairChangeTag = uuid.v4();
  final String _pairChangePercentTag = uuid.v4();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    Pair pair = widget.pair;
    controller.getFeed(pair);
    return controller.obx(
      (state) {
        var summary = controller.pairSummary.value!;
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              goToDetailPage(
                  pair: pair,
                  summary: summary,
                  pairNameTag: _pairNameTag,
                  pairPriceTag: _pairPriceTag,
                  pairChangeTag: _pairChangeTag,
                  pairChangePercentTag: _pairChangePercentTag);
            },
            child: Container(
              key: Keys.pairTile,
              decoration: BoxDecoration(
                  gradient: createBackgroundColor(summary, context)),
              child: SizedBox(
                  height: 11.h,
                  child: Stack(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: createCoinAvatar(pair, context)),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 22.0.w),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 1.5.h),
                                  child: createPairName(pair, _pairNameTag,context),
                                ),
                              ),
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 2.7.h),
                                    child: createVolText(summary),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: createPairPrice(summary, _pairPriceTag),
                      ),
                    ],
                  )),
            ),
          ),
        );
      },
      onLoading: SizedBox(height: 100, child: loadingPairTile()),
      onError: (e) => SizedBox(
        height: 100,
        child: error(e),
      ),
    );
  }

  createPairPrice(PairSummary summary, pairPriceTag) => Padding(
        padding: EdgeInsets.only(top: 2.5.h, right: 3.w),
        child: Hero(
          tag: pairPriceTag,
          child: Material(
            type: MaterialType.transparency,
            child: Text(
              formatNumbers(summary.price.last),
              maxLines: 1,
              style: TextStyle(
                  fontSize: 14.sp,
                  color: summary.price.change.absolute >= 0
                      ? Colors.green
                      : Colors.red),
            ),
          ),
        ),
      );

  createCoinAvatar(Pair pair, BuildContext context) => Padding(
        padding: EdgeInsets.only(left: 4.w, right: 4.w),
        child: SvgPicture.asset(coins[pair.pair] ?? usdtFile,
            width: 50,
            height: 50,
            fit: BoxFit.contain,
            color: Theme.of(context).focusColor),
      );

  createVolText(PairSummary summary) {
    var vol = formatNumbers(summary.volumeQuote / pow(10, 6));
    return Text(
      'Vol.${vol}M',
      style: TextStyle(fontSize: 10.sp, color: CupertinoColors.inactiveGray),
    );
  }

  createBackgroundColor(summary, context) {
    CupertinoColors.inactiveGray.withOpacity(0.08);
    var beginColor = Theme.of(context).cardColor;
    if (summary.price.change.absolute < 0) {
      return LinearGradient(
          colors: [
            beginColor,
            Colors.red.withOpacity(0.1),
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: const [0.0, 1.5],
          tileMode: TileMode.decal);
    } else if (summary.price.change.absolute > 0) {
      return LinearGradient(
          colors: [
            beginColor,
            Colors.green.withOpacity(0.1),
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: const [0.0, 1.5],
          tileMode: TileMode.decal);
    } else {
      return LinearGradient(
          colors: [
            beginColor,
            beginColor,
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: const [0.0, 1.5],
          tileMode: TileMode.decal);
    }
  }

  createPairName(Pair pair, pairNameTag,context) {
    var coinSize = 14.sp;
    var usdtSize = 10.sp;
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Hero(
        tag: pairNameTag,
        child: Material(
          type: MaterialType.transparency,
          child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  pair.pair.replaceAll('usdt', '').toUpperCase(),
                  style: TextStyle(
                      color: Theme.of(context).unselectedWidgetColor, fontSize: coinSize),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text('/',
                      style: TextStyle(
                          color: CupertinoColors.inactiveGray,
                          fontSize: usdtSize)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text('usdt'.toUpperCase(),
                      style: TextStyle(
                          color: CupertinoColors.inactiveGray,
                          fontSize: usdtSize)),
                ),
              ]),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
