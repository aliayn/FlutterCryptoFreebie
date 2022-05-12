import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../models/exchanges/exchange/exchange.dart';
import '../models/graph/graph/graph.dart';
import '../models/markets/pair/pair.dart';
import '../models/orderbook/orderbook/orderbook.dart';
import '../models/pair/pair_summary/pair_summary.dart';
import '../models/trades/trade/trade.dart';
import '../api/api_service.dart';

class AppProvider extends GetxService {
  final ApiService _apiService = Get.find<ApiService>();

  //-----------------------------Api-----------------------------------------

  Future<List<Pair>> getPairs(String market, [CancelToken? cancelToken]) =>
      _apiService.getPairs(market, cancelToken);

  Future<PairSummary> getPairSummary(String market, String pair,
          [CancelToken? cancelToken]) =>
      _apiService.getPairSummary(market, pair, cancelToken);

  Future<List<Exchange>> getExchanges([CancelToken? cancelToken]) =>
      _apiService.getExchanges(cancelToken);

  Future<OrderBook> getOrderBook(String market, String pair,
          [CancelToken? cancelToken]) =>
      _apiService.getOrderBook(market, pair, cancelToken);

  Future<List<Trade>> getTrades(String market, String pair,
          [CancelToken? cancelToken]) =>
      _apiService.getTrades(market, pair, cancelToken);

  Future<Graph> getPairGraph(String market, String pair,
          {String periods = '',
          String after = '',
          String before = '',
          CancelToken? cancelToken}) =>
      _apiService.getPairGraph(
          market, pair, periods, after, before, cancelToken);
}
