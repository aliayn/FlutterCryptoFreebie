import 'package:crypto_freebie/locale/en_language.dart';
import 'package:crypto_freebie/locale/es_language.dart';

class AppTranslation {
  static Map<String, Map<String, String>> get keys => {
        'es_ES': EsLanguage.language,
        'en_EN': EnLanguage.language,
      };
}
