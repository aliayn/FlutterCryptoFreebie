import 'package:crypto_freebie/locale/app_translation.dart';
import 'package:crypto_freebie/routes/routes.dart';
import 'package:crypto_freebie/services/app_service.dart';
import 'package:crypto_freebie/theme/theme_service.dart';
import 'package:crypto_freebie/theme/theme_config.dart';
import 'package:crypto_freebie/utils/utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() async {
  await AppService.init();
  runApp(const MyApp());
}

class MyApp extends GetView {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Sizer(
        builder: ((context, orientation, deviceType) => GetMaterialApp(
              debugShowCheckedModeBanner: true,
              locale: getDefaultLocale(),
              fallbackLocale: const Locale('en', 'US'),
              translationsKeys: AppTranslation.keys,
              getPages: AppPages.routes,
              initialRoute: AppPages.initial,
              theme: lightTheme(context),
              darkTheme: darkTheme(context),
              themeMode: ThemeService.instance.theme,
            )),
      );
}
