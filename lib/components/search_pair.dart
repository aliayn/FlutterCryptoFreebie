// ignore_for_file: unnecessary_null_comparison

import 'package:crypto_freebie/components/pair_tile.dart';
import 'package:crypto_freebie/controllers/search/search_controller.dart';
import 'package:crypto_freebie/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../locale/locale_keys.dart';
import '../models/markets/pair/pair.dart';

class SearchPairDelegate extends SearchDelegate {
  final SearchController controller;
  final searchList = RxList();

  SearchPairDelegate(this.controller) {
    searchList(getSearchText());
  }

  @override
  TextStyle get searchFieldStyle => TextStyle(fontSize: 16.sp);

  @override
  String? get searchFieldLabel => LocaleKeys.searchBar.tr;

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    theme.copyWith(
        inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: InputBorder.none,
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
    ));
    return theme;
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    controller.addSearchQuery(query);
    setSearchText(query);
    searchList(getSearchText());
    return Obx(() {
      var pairs = controller.searchPairs;
      return _pairListWidget(pairs);
    });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Obx(
      () {
        return Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: searchList.length,
              itemBuilder: (context, int index) {
                if (searchList[index].toString() != '') {
                  return GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    searchList[index].toString().toUpperCase(),
                                    style: TextStyle(fontSize: 14.sp),
                                  ),
                                ),
                                GestureDetector(
                                  child: const Icon(CupertinoIcons.xmark,
                                      size: 16),
                                  onTap: () {
                                    deleteSearchText(
                                        searchList[index].toString());
                                    searchList
                                        .remove(searchList[index].toString());
                                  },
                                )
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 0.5.w,
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      query = searchList[index].toString();
                      showResults(context);
                    },
                  );
                } else {
                  return const SizedBox();
                }
              }),
        );
      },
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
