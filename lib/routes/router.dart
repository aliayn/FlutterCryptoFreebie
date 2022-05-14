import 'package:crypto_freebie/models/markets/pair/pair.dart';
import 'package:crypto_freebie/routes/routes.dart';
import 'package:get/get.dart';

goToDetailPage({required Pair pair}) =>
    Get.toNamed(Routes.detail, arguments: [pair]);
