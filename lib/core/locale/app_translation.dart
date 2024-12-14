import 'package:hoshmand_code_challenge/core/locale/fa_language.dart';

import 'en_language.dart';

class AppTranslation {
  static Map<String, Map<String, String>> get keys => {
        'en_EN': EnglishLanguage.language,
        'fa_IR': FarsiLanguage.language,
      };
}
