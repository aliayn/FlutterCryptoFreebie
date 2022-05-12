// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ApiClient implements ApiClient {
  _ApiClient(String apiKey, {this.baseUrl}) {
    baseUrl ??= 'https://api.cryptowat.ch';
    _dio = Dio(
        BaseOptions(connectTimeout: 5000, headers: {'X-CW-API-Key': apiKey}));
  }

  late Dio _dio;

  String? baseUrl;

  @override
  Future<List<Pair>> getPairs(market, [cancelToken]) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<List<Pair>>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/markets/$market',
                queryParameters: queryParameters,
                data: _data,
                cancelToken: cancelToken)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    try {
      return MarketResponse.fromJson(_result.data).result;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }

  @override
  Future<PairSummary> getPairSummary(market, pair, [cancelToken]) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PairSummary>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/markets/$market/$pair/summary',
                    queryParameters: queryParameters,
                    data: _data,
                    cancelToken: cancelToken)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    try {
      return PairResponse.fromJson(_result.data!).result;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }

  @override
  Future<OrderBook> getOrderBook(market, pair, [cancelToken]) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<OrderBook>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/markets/$market/$pair/orderbook',
                    queryParameters: queryParameters,
                    data: _data,
                    cancelToken: cancelToken)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
   try {
      return OrderBookResponse.fromJson(_result.data!).result;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }

  @override
  Future<Graph> getPairGraph(market, pair,
      {periods = "", after = "", before = "", cancelToken}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Graph>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/markets/$market/$pair/ohlc',
                    queryParameters: queryParameters,
                    data: _data,
                    cancelToken: cancelToken)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    try {
      return GraphResponse.fromJson(_result.data!).result;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }

  @override
  Future<List<Exchange>> getExchanges([cancelToken]) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(
        _setStreamType<List<Exchange>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/exchanges',
                    queryParameters: queryParameters,
                    data: _data,
                    cancelToken: cancelToken)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    try {
      return ExchangesResponse.fromJson(_result.data!).result;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }

  @override
  Future<List<Trade>> getTrades(market, pair, [cancelToken]) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<List<Trade>>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/markets/$market/$pair/trades',
                queryParameters: queryParameters,
                data: _data,
                cancelToken: cancelToken)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    try {
      return TradesResponse.fromJson(_result.data!).result!;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
