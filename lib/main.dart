import 'package:crypto_freebie/routes/routes.dart';
import 'package:crypto_freebie/services/app_service.dart';
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
              debugShowCheckedModeBanner: false,
              getPages: AppPages.routes,
              initialRoute: AppPages.initial,
            )),
      );
}
