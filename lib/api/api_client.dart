import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

import '../models/exchanges/exchange/exchange.dart';
import '../models/exchanges/exchanges_response/exchanges_response.dart';
import '../models/graph/graph/graph.dart';
import '../models/graph/graph_response/graph_response.dart';
import '../models/markets/market_response/market_response.dart';
import '../models/markets/pair/pair.dart';
import '../models/orderbook/orderbook/orderbook.dart';
import '../models/orderbook/orderbook_response/orderbook_response.dart';
import '../models/pair/pair_response/pair_response.dart';
import '../models/pair/pair_summary/pair_summary.dart';
import '../models/trades/trade/trade.dart';
import '../models/trades/trades_response.dart/trades_response.dart';
import '../utils/exceptions.dart';

part 'api_client.g.dart';

class _Apis {
  static const String baseURL = 'https://api.cryptowat.ch';
  static const String pairs = '/markets/{market}';
  static const String pairsSummary = '/markets/{market}/{pair}/summary';
  static const String pairsGraph = '/markets/{market}/{pair}/ohlc';
  static const String orderBook = '/markets/{market}/{pair}/orderbook';
  static const String trades = '/markets/{market}/{pair}/trades';
  static const String exchanges = '/exchanges';
}

@RestApi(baseUrl: _Apis.baseURL)
abstract class ApiClient {
  factory ApiClient(String apiKey, {String baseUrl}) = _ApiClient;

  @GET(_Apis.pairs)
  Future<List<Pair>> getPairs(@Path('market') String market,
      [@CancelRequest() CancelToken? cancelToken]);

  @GET(_Apis.pairsSummary)
  Future<PairSummary> getPairSummary(
      @Path('market') String market, @Path('pair') String pair,
      [@CancelRequest() CancelToken? cancelToken]);

  @GET(_Apis.orderBook)
  Future<OrderBook> getOrderBook(
      @Path('market') String market, @Path('pair') String pair,
      [@CancelRequest() CancelToken? cancelToken]);

  @GET(_Apis.pairsGraph)
  Future<Graph> getPairGraph(
      @Path('market') String market, @Path('pair') String pair,
      {String periods = "",
      String after = "",
      String before = "",
      @CancelRequest() CancelToken? cancelToken});

  @GET(_Apis.exchanges)
  Future<List<Exchange>> getExchanges(
      [@CancelRequest() CancelToken? cancelToken]);

  @GET(_Apis.trades)
  Future<List<Trade>> getTrades(
      @Path('market') String market, @Path('pair') String pair,
      [@CancelRequest() CancelToken? cancelToken]);
}
