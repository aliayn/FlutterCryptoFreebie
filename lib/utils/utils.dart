import 'dart:convert';
import 'dart:ui';

import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';

import '../models/graph/graph/graph.dart';

final _box = GetStorage();

erase() {
  // _box.remove(_searchTextKey);
}

const String _defaultLocale = "en";
const String _defaultExchange = "binance";
const String _defaultPair = "btcusdt";
const List _defaultSearchText = [];

const _languageKey = 'language';
const _exchangeKey = 'exchange';
const _pairKey = 'pair';
const _searchTextKey = 'searchText';

setPair(value) => _box.write(_pairKey, value);

getPair() => _box.read(_pairKey) ?? _defaultPair;

setSearchText(value) {
  List list = getSearchText();
  list = List.from(list);
  if (!list.contains(value)) list.add(value);
  return _box.write(_searchTextKey, jsonEncode(list));
}

deleteSearchText(value) {
  List list = getSearchText();
  list = List.from(list);
  if (list.contains(value)) list.remove(value);
  return _box.write(_searchTextKey, jsonEncode(list));
}

getSearchText() {
  var list = _box.read(_searchTextKey);
  if (list != null) return jsonDecode(list);
  return _defaultSearchText;
}

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

String formatNumbers(double number,{int decimalDigits = 2}) {
  return NumberFormat.currency(name: r'$', decimalDigits: decimalDigits).format(number);
}

String formatPercentNumber(double number,{int decimalDigits = 2}) {
  return NumberFormat.decimalPercentPattern(decimalDigits: decimalDigits).format(number);
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
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
