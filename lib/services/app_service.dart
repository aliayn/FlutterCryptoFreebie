import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_storage/get_storage.dart';

class AppService {
  static Future init() async {
    await GetStorage.init();
    await dotenv.load(fileName: ".env");
  }
}
