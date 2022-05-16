// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ApiClient implements ApiClient {
  _ApiClient(String apiKey, {this.baseUrl}) {
    baseUrl ??= 'https://api.cryptowat.ch';
    _dio = Dio(BaseOptions(
        baseUrl: baseUrl!,
        connectTimeout: 5000,
        headers: {'X-CW-API-Key': apiKey}));
  }

  late Dio _dio;

  String? baseUrl;

  @override
  Future<List<Pair>> getPairs(market, [cancelToken]) async {
    try {
      final _result =
          await _dio.get('/markets/$market', cancelToken: cancelToken);
      return MarketResponse.fromJson(_result.data).result;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }

  @override
  Future<PairSummary> getPairSummary(market, pair, [cancelToken]) async {
    try {
      final response = await _dio.get('/markets/$market/$pair/summary',
          cancelToken: cancelToken);
      return PairResponse.fromJson(response.data).result;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }

  @override
  Future<OrderBook> getOrderBook(market, pair, [cancelToken]) async {
    try {
      final response = await _dio.get('/markets/$market/$pair/orderbook',
          cancelToken: cancelToken);
      return OrderBookResponse.fromJson(response.data).result;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }

  @override
  Future<Graph> getPairGraph(market, pair,
      [periods = "", after = "", before = "", cancelToken]) async {
    try {
      final response = await _dio.get('/markets/$market/$pair/ohlc',
          queryParameters: {
            "periods": periods,
            "after": after,
            "before": before
          },
          cancelToken: cancelToken);
      return GraphResponse.fromJson(response.data).result;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }

  @override
  Future<List<Exchange>> getExchanges([cancelToken]) async {
    try {
      final response = await _dio.get('/exchanges', cancelToken: cancelToken);
      return ExchangesResponse.fromJson(response.data).result;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }

  @override
  Future<List<Trade>> getTrades(market, pair, [cancelToken]) async {
    try {
      final response = await _dio.get('/markets/$market/$pair/trades',
          cancelToken: cancelToken);
      return TradesResponse.fromJson(response.data).result!;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }
}
