import 'package:crypto_freebie/locale/locale_keys.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget error(String? error) => Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Builder(builder: (context) => Text(
            error ?? LocaleKeys.errorSomethingWentWrong.tr,
            maxLines: 2,
            style: Theme.of(context).textTheme.bodyText1,
            textAlign: TextAlign.center,
          )),
      ),
    );
