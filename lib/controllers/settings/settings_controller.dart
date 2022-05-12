import 'dart:ui';

import 'package:crypto_freebie/base/base_controller.dart';
import 'package:crypto_freebie/database/storage.dart';
import 'package:crypto_freebie/theme/theme_config.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../models/exchanges/exchange/exchange.dart';
import '../../models/markets/pair/pair.dart';

class SettingsController extends BaseController {
  final _storage = Storage.instance;
  final CancelToken _cancelToken = CancelToken();
  final themeMode = ThemeService.instance.isDarkMode().obs;

  var language = ''.obs;
  var pair = ''.obs;
  var exchange = ''.obs;

  var pairs = <Pair>[].obs;
  var exchanges = <Exchange>[].obs;

  init() {
    if (_storage.getLanguage() == 'en') {
      language('English');
    } else {
      language('Spanish');
    }
    pair(_storage.getPair());
    exchange(_storage.getExchange());
    _getPairs();
    _getExchanges();
  }

  @override
  void onClose() {
    _cancelToken.cancel();
    super.onClose();
  }

  _getPairs() async {
    pairs.assignAll(await provider.getPairs(exchange.value, _cancelToken));
  }

  _getExchanges() async {
    exchanges.assignAll(await provider.getExchanges(_cancelToken));
  }

  setExchange(value) {
    _storage.setExchange(value);
    exchange(value);
  }

  setPair(value) {
    _storage.setPair(value);
    pair(value);
  }

  setLanguage(value) {
    Get.updateLocale(Locale(value));
    _storage.setLanguage(value);
    language(value);
  }

  switchTheme(isDark) {
    if (themeMode.value != isDark) {
      ThemeService.instance.switchTheme();
      themeMode(ThemeService.instance.isDarkMode());
    }
  }
}
