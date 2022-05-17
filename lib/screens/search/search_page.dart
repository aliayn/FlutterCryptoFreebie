import 'package:crypto_freebie/components/pair_tile.dart';
import 'package:crypto_freebie/controllers/search/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../locale/locale_keys.dart';
import '../../utils/keys.dart';
import '../../utils/utils.dart';

class SearchPage extends GetView<SearchController> {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Keys.searchScreen,
      child: Column(
        children: [
          AppBar(
            title: Text(
              LocaleKeys.searchTitle.tr,
              style: const TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    color: Theme.of(context).cardColor,
                  ),
                  child: TextFormField(
                    key: Keys.searchTextField,
                    initialValue: getSearchText(),
                    style: const TextStyle(color: Colors.white, fontSize: 21),
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search,
                            color: Colors.white, size: 32),
                        hintText: LocaleKeys.searchBar.tr,
                        hintStyle: const TextStyle(color: Colors.white),
                        border: InputBorder.none),
                    onChanged: setSearchText,
                  ),
                ),
                Expanded(
                    child: controller.obx(
                  (data) => Stack(
                    children: [
                      ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: data!.length,
                        itemBuilder: (context, int index) {
                          return PairTile(pair: data[index]);
                        },
                      ),
                      if (data.isEmpty)
                        Center(child: Text(LocaleKeys.noResults.tr))
                    ],
                  ),
                  onLoading: const Center(
                    child: CircularProgressIndicator(),
                  ),
                  onError: (error) => Center(
                    child: Text(error!),
                  ),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
