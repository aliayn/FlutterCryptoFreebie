import 'package:crypto_freebie/models/orderbook/orderbook/orderbook.dart';
import 'package:crypto_freebie/models/pair/pair_summary/pair_summary.dart';
import 'package:crypto_freebie/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../api/api_service.dart';
import '../models/exchanges/exchange/exchange.dart';
import '../models/graph/graph/graph.dart';
import '../models/markets/pair/pair.dart';
import '../models/trades/trade/trade.dart';

late final ApiService _apiService = Get.find<ApiService>();

late List<Exchange> _exchangesList = [];
late Map<String, List<Pair>> _pairs = {getExchange(): []};
late Map<Map<String, String>, OrderBook?> _pairsOrderBook = {
  {getExchange(): getPair()}: null
};
late Map<Map<String, String>, PairSummary?> _pairsSummery = {
  {getExchange(): getPair()}: null
};
late Map<Map<String, String>, List<Trade>> _pairsTrades = {
  {getExchange(): getPair()}: []
};

Future<List<Pair>> pairList(String market, CancelToken? cancelToken) async {
  if (_pairs.keys.contains(market) && _pairs[market]!.isNotEmpty) {
    return Future.value(_pairs.values.first);
  } else {
    _pairs[market] = await _apiService.getPairs(market, cancelToken);
    return Future.value(_pairs[market]);
  }
}

Future<PairSummary> pairSummary(
    String market, String pair, CancelToken? cancelToken) async {
  var key = {market: pair};
  if (_pairsSummery.keys.contains(key) && _pairsSummery[key] != null) {
    return Future.value(_pairsSummery[key]);
  } else {
    _pairsSummery[key] =
        await _apiService.getPairSummary(market, pair, cancelToken);
    return Future.value(_pairsSummery[key]);
  }
}

Future<List<Exchange>> exchangeList(CancelToken? cancelToken) async {
  if (_exchangesList.isNotEmpty) {
    return Future.value(_exchangesList);
  } else {
    _exchangesList.addAll(await _apiService.getExchanges(cancelToken));
    return Future.value(_exchangesList);
  }
}

Future<OrderBook> orderBook(
    String market, String pair, CancelToken? cancelToken) async {
  var key = {market: pair};
  if (_pairsOrderBook.keys.contains(key) && _pairsOrderBook[key] != null) {
    return Future.value(_pairsOrderBook[key]);
  } else {
    _pairsOrderBook[key] =
        await _apiService.getOrderBook(market, pair, cancelToken);
    return Future.value(_pairsOrderBook[key]);
  }
}

Future<List<Trade>> trades(
    String market, String pair, CancelToken? cancelToken) async {
  var key = {market: pair};
  if (_pairsTrades.keys.contains(key) && _pairsTrades[key]!.isNotEmpty) {
    return Future.value(_pairsTrades[key]);
  } else {
    _pairsTrades[key] = await _apiService.getTrades(market, pair, cancelToken);
    return Future.value(_pairsTrades[key]);
  }
}

Future<Graph> pairGraph(String market, String pair, String periods,
    String after, String before, CancelToken? cancelToken) {
  return _apiService.getPairGraph(
      market, pair, periods, after, before, cancelToken);
}
