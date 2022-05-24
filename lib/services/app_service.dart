import 'package:crypto_freebie/api/api_client.dart';
import 'package:crypto_freebie/api/api_service.dart';
import 'package:crypto_freebie/providers/app_provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AppService {
  static Future init() async {
    await GetStorage.init();
    await dotenv.load();
    Get.lazyPut(() => ApiClient(dotenv.env['API_KEY']!));
    Get.lazyPut(() => ApiService());
    Get.lazyPut(() => AppProvider());
  }
}
