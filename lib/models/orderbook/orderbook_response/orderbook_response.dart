import 'package:freezed_annotation/freezed_annotation.dart';

import '../orderbook/orderbook.dart';
part 'orderbook_response.freezed.dart';

@freezed
abstract class OrderBookResponse with _$OrderBookResponse {
  const factory OrderBookResponse(OrderBook result) = _OrderBookResponse;

  factory OrderBookResponse.fromJson(Map<String, dynamic> json) {
    final result = OrderBook.fromJson(json['result']);
    return OrderBookResponse(result);
  }
}
