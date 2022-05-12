import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../models/exchanges/exchange/exchange.dart';
import '../models/graph/graph/graph.dart';
import '../models/markets/pair/pair.dart';
import '../models/orderbook/orderbook/orderbook.dart';
import '../models/pair/pair_summary/pair_summary.dart';
import '../models/trades/trade/trade.dart';
import 'api_client.dart';

class ApiService {
  final ApiClient _apiClient = Get.find<ApiClient>();

  Future<List<Pair>> getPairs(String market, [CancelToken? cancelToken]) =>
      _apiClient.getPairs(market, cancelToken);

  Future<PairSummary> getPairSummary(String market, String pair,
          [CancelToken? cancelToken]) =>
      _apiClient.getPairSummary(market, pair, cancelToken);

  Future<List<Exchange>> getExchanges([CancelToken? cancelToken]) =>
      _apiClient.getExchanges(cancelToken);

  Future<OrderBook> getOrderBook(String market, String pair,
          [CancelToken? cancelToken]) =>
      _apiClient.getOrderBook(market, pair, cancelToken);

  Future<List<Trade>> getTrades(String market, String pair,
          [CancelToken? cancelToken]) =>
      _apiClient.getTrades(market, pair, cancelToken);

  Future<Graph> getPairGraph(String market, String pair,
          [String periods = '',
          String after = '',
          String before = '',
          CancelToken? cancelToken]) =>
      _apiClient.getPairGraph(
          market, pair, periods, after, before, cancelToken);
}
