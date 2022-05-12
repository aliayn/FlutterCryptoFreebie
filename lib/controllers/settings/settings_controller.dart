import 'package:crypto_freebie/base/base_controller.dart';
import 'package:crypto_freebie/database/storage.dart';
import 'package:crypto_freebie/theme/theme_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsController extends BaseController {
  final _storage = Storage.instance;
  final _themeService = ThemeService.instance;

  var language = ''.obs;
  var pair = ''.obs;
  var exchange = ''.obs;
  var isDarkMode = false.obs;

  init() {
    language(_storage.getLanguage());
    pair(_storage.getPair());
    exchange(_storage.getExchange());
    isDarkMode(_themeService.isDarkMode());
  }
}
