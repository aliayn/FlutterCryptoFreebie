import 'dart:ui';

import 'package:crypto_freebie/base/base_controller.dart';
import 'package:crypto_freebie/locale/locale_keys.dart';
import 'package:crypto_freebie/theme/theme_service.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../models/exchanges/exchange/exchange.dart';
import '../../models/markets/pair/pair.dart';
import '../../utils/utils.dart';

class SettingsController extends BaseController {
  final CancelToken _cancelToken = CancelToken();
  final themeMode = ThemeService.instance.isDarkMode().obs;

  var language = RxString(LocaleKeys.english);
  var pair = RxString('');
  var exchange = RxString('');

  var pairs = <Pair>[].obs;
  var exchanges = <Exchange>[].obs;

  init() {
    if (getLanguage() != "es") {
      language(LocaleKeys.spanish);
    }
    pair(getPair());
    exchange(getExchange());
    _getPairs();
    _getExchanges();
  }

  @override
  void onClose() {
    _cancelToken.cancel();
    super.onClose();
  }

  _getPairs() async {
    var list = await provider.getPairs(exchange.value, _cancelToken);
    pairs.assignAll(list);
  }

  _getExchanges() async {
    exchanges.assignAll(await provider.getExchanges(_cancelToken));
  }

  changeExchange(Exchange value) {
    setExchange(value.symbol);
    exchange(value.name);
  }

  changePair(value) {
    setPair(value);
    pair(value);
  }

  changeLanguage(value) {
    if (value == LocaleKeys.english) {
      language.value = LocaleKeys.english;
      setLanguage("en");
      Get.updateLocale(const Locale("en"));
      print(language.value);
    } else {
      language.value = LocaleKeys.spanish;
      setLanguage("es");
      Get.updateLocale(const Locale("es"));
      print(language.value);
    }
  }

  switchTheme(isDark) {
    if (themeMode.value != isDark) {
      ThemeService.instance.switchTheme();
      themeMode(ThemeService.instance.isDarkMode());
    }
  }
}
