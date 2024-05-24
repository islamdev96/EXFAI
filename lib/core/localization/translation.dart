import '../../../../all_export.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        EnglishTranslation().keys.keys.first:
            EnglishTranslation().keys.values.first,
        ArabicTranslation().keys.keys.first:
            ArabicTranslation().keys.values.first,
      };
}
