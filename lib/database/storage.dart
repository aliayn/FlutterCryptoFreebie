import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Storage {
  Storage._();

  final _box = GetStorage();

  final String _defaultLocale = "en";
  final String _defaultExchange = "binance";
  final String _defaultPair = "btcusdt";

  final _languageKey = 'language';
  final _exchangeKey = 'exchange';
  final _pairKey = 'pair';

  static late final Storage instance = Storage._();

  setPair(value) => _box.write(_pairKey, value);

  getPair() => _box.read(_pairKey) ?? _defaultPair;

  setLanguage(value) {
    Get.updateLocale(value);
    return _box.write(_languageKey, value);
  }

  String getLanguage() => _box.read(_languageKey) ?? _defaultLocale;

  getDefaultLocale() => Locale(getLanguage());

  setExchange(value) => _box.write(_exchangeKey, value);

  getExchange() => _box.read(_exchangeKey) ?? _defaultExchange;
}
