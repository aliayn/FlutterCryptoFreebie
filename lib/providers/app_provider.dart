import 'package:crypto_freebie/providers/api_provider.dart';
import 'package:dio/dio.dart';

import '../models/exchanges/exchange/exchange.dart';
import '../models/graph/graph/graph.dart';
import '../models/markets/pair/pair.dart';
import '../models/orderbook/orderbook/orderbook.dart';
import '../models/pair/pair_summary/pair_summary.dart';
import '../models/trades/trade/trade.dart';

class AppProvider {
  //-----------------------------Api-----------------------------------------

  Future<List<Pair>> getPairs(String market, [CancelToken? cancelToken]) =>
      pairList(market, cancelToken);

  Future<PairSummary> getPairSummary(String market, String pair,
          [CancelToken? cancelToken]) =>
      pairSummary(market, pair, cancelToken);

  Future<List<Exchange>> getExchanges([CancelToken? cancelToken]) =>
      exchangeList(cancelToken);

  Future<OrderBook> getOrderBook(String market, String pair,
          [CancelToken? cancelToken]) =>
      orderBook(market, pair, cancelToken);

  Future<List<Trade>> getTrades(String market, String pair,
          [CancelToken? cancelToken]) =>
      trades(market, pair, cancelToken);

  Future<Graph> getPairGraph(String market, String pair,
          {String periods = '',
          String after = '',
          String before = '',
          CancelToken? cancelToken}) =>
      pairGraph(market, pair, periods, after, before, cancelToken);
}
