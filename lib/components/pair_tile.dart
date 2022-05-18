import 'package:auto_size_text/auto_size_text.dart';
import 'package:crypto_freebie/components/error.dart';
import 'package:crypto_freebie/components/line_chart.dart';
import 'package:crypto_freebie/components/loading.dart';
import 'package:crypto_freebie/controllers/pairTile/pair_tile_controller.dart';
import 'package:crypto_freebie/models/markets/pair/pair.dart';
import 'package:crypto_freebie/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/keys.dart';
import '../utils/utils.dart';

class PairTile extends StatefulWidget {
  final Pair pair;
  const PairTile({Key? key, required this.pair}) : super(key: key);

  @override
  State<PairTile> createState() => _PairTileState();
}

class _PairTileState extends State<PairTile>
    with AutomaticKeepAliveClientMixin {
  final PairTileController controller = PairTileController();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    Pair pair = widget.pair;
    controller.getFeed(pair);
    return controller.obx(
      (state) {
        var summary = controller.pairSummary.value!;
        var graph = controller.graph.value!;
        return Container(
          key: Keys.pairTile,
          child: GestureDetector(
              onTap: () {
                goToDetailPage(pair: pair, summary: summary, graph: graph);
              },
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          width: 80,
                          child: AutoSizeText(pair.pair.toUpperCase(),
                              textAlign: TextAlign.start,
                              minFontSize: 0,
                              stepGranularity: 0.1,
                              maxLines: 2,
                              style: Theme.of(context).textTheme.headline5),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            height: 50,
                            child: lineChartWidget(
                                color: summary.price.change.absolute < 0
                                    ? Colors.red
                                    : const Color(0xff02d39a),
                                data: getPoints(graph))),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          padding: const EdgeInsets.only(top: 25, left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Center(
                                child: AutoSizeText(
                                  summary.price.last.toStringAsFixed(2),
                                  minFontSize: 10,
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      child: AutoSizeText(
                                          summary.price.change.absolute
                                              .toStringAsFixed(5),
                                          textAlign: TextAlign.end,
                                          minFontSize: 0,
                                          stepGranularity: 0.1,
                                          maxLines: 1,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5!
                                              .apply(
                                                  color: summary.price.change
                                                              .absolute >=
                                                          0
                                                      ? Colors.green
                                                      : Colors.red)),
                                    ),
                                    AutoSizeText(
                                        ' (${summary.price.change.percentage.toStringAsFixed(2)}%)',
                                        textAlign: TextAlign.end,
                                        minFontSize: 0,
                                        stepGranularity: 0.1,
                                        maxLines: 1,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6),
                                  ]),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ))),
        );
      },
      onLoading: SizedBox(height: 100, child: loadingPairTile()),
      onError: (e) => SizedBox(
        height: 100,
        child: error(e),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
