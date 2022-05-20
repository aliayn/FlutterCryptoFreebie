import 'package:crypto_freebie/components/error.dart';
import 'package:crypto_freebie/components/loading.dart';
import 'package:crypto_freebie/components/pair_tile.dart';
import 'package:crypto_freebie/controllers/search/search_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/search_pair.dart';
import '../../locale/locale_keys.dart';
import '../../models/markets/pair/pair.dart';
import '../../utils/keys.dart';

class SearchPage extends GetView<SearchController> {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(CupertinoIcons.search),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: SearchPairDelegate(controller),
                );
              },
            ),
          ],
          bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              isScrollable: true,
              tabs: <Tab>[
                Tab(text: 'usdt'.toUpperCase()),
                Tab(text: 'btc'.toUpperCase()),
                Tab(text: 'eth'.toUpperCase()),
                Tab(text: 'bnb'.toUpperCase()),
                Tab(text: 'busd'.toUpperCase()),
                Tab(text: 'futures'.toUpperCase()),
              ]),
        ),
        body: Container(
          key: Keys.searchScreen,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                        child: controller.obx(
                      (data) => TabBarView(children: [
                        _pairListWidget(controller.usdtPairs),
                        _pairListWidget(controller.btcPairs),
                        _pairListWidget(controller.ethPairs),
                        _pairListWidget(controller.bnbPairs),
                        _pairListWidget(controller.busdPairs),
                        _pairListWidget(controller.futuresPairs),
                      ]),
                      onLoading: TabBarView(children: <Widget>[
                        for (var i = 0; i < 6; i += 1) loading()
                      ]),
                      onError: (e) => TabBarView(children: <Widget>[
                        for (var i = 0; i < 6; i += 1) error(e)
                      ]),
                    ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _pairListWidget(List<Pair> pairs) {
    return Stack(
      children: [
        ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: pairs.length,
          itemBuilder: (context, int index) {
            return PairTile(pair: pairs[index]);
          },
        ),
        if (pairs.isEmpty) Center(child: Text(LocaleKeys.noResults.tr))
      ],
    );
  }
}
