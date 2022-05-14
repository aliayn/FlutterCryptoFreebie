import 'dart:ui';

import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';

import '../models/graph/graph/graph.dart';

final _box = GetStorage();

const String _defaultLocale = "en";
const String _defaultExchange = "binance";
const String _defaultPair = "btcusdt";
const String _defaultSearchText = "";

const _languageKey = 'language';
const _exchangeKey = 'exchange';
const _pairKey = 'pair';
const _searchTextKey = 'searchText';

setPair(value) => _box.write(_pairKey, value);

getPair() => _box.read(_pairKey) ?? _defaultPair;

setSearchText(value) => _box.write(_searchTextKey, value);

getSearchText() => _box.read(_searchTextKey) ?? _defaultSearchText;

setLanguage(value) => _box.write(_languageKey, value);

String getLanguage() => _box.read(_languageKey) ?? _defaultLocale;

getDefaultLocale() => Locale(getLanguage());

setExchange(value) => _box.write(_exchangeKey, value);

getExchange() => _box.read(_exchangeKey) ?? _defaultExchange;

List<double> getPoints(Graph graph) {
  if (graph.pairs[0].points.isNotEmpty) {
    return graph.pairs[0].points.map((e) => e.closePrice).toList();
  } else {
    return [];
  }
}

String epochToString(String epoch) {
  final DateTime timeStamp =
      DateTime.fromMillisecondsSinceEpoch(int.parse(epoch) * 1000);
  return DateFormat('dd/MM/yyyy').format(timeStamp);
}

const List<double> demoGraphData = [
  86,
  45,
  59,
  65,
  1,
  62,
  26,
  41,
  88,
  60,
  17,
  18,
  58,
  67,
  55,
  56,
  97,
  96,
  22,
  57,
  29,
  69,
  19,
  30,
  47,
  63,
  33,
  37,
  40,
  51,
  53,
  91,
  71,
  92,
  28,
];
