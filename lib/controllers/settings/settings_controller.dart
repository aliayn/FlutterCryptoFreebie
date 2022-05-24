import 'dart:ui';

import 'package:crypto_freebie/base/base_controller.dart';
import 'package:crypto_freebie/locale/locale_keys.dart';
import 'package:crypto_freebie/theme/theme_service.dart';
import 'package:get/get.dart';

import '../../models/exchanges/exchange/exchange.dart';
import '../../models/markets/pair/pair.dart';
import '../../utils/utils.dart';

class SettingsController extends BaseController {
  final themeMode = ThemeService.instance.isDarkMode().obs;

  var language = RxString(LocaleKeys.english);
  var pair = RxString('');
  var exchange = RxString('');

  var pairs = <Pair>[].obs;
  var exchanges = <Exchange>[].obs;

  init() {
    if (getLanguage() != "en") {
      language(LocaleKeys.spanish);
    }
    pair(getPair());
    exchange(getExchange());
    _getPairs();
    _getExchanges();
  }

  _getPairs() async {
    var list = await provider.getPairs(exchange.value);
    pairs.assignAll(list);
  }

  _getExchanges() async {
    exchanges.assignAll(await provider.getExchanges());
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
    } else {
      language.value = LocaleKeys.spanish;
      setLanguage("es");
      Get.updateLocale(const Locale("es"));
    }
  }

  switchTheme(isDark) {
    if (themeMode.value != isDark) {
      ThemeService.instance.switchTheme();
      themeMode(ThemeService.instance.isDarkMode());
    }
  }
}
