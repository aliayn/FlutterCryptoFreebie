import 'package:crypto_freebie/locale/locale_keys.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget error(String? error) => Center(
      child: Text(error ?? LocaleKeys.errorSomethingWentWrong.tr),
    );
