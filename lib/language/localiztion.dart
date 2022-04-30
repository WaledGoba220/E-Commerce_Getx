import 'package:e_commerce/language/ar.dart';
import 'package:e_commerce/language/en.dart';
import 'package:e_commerce/language/fr.dart';
import 'package:e_commerce/utils/my_string.dart';
import 'package:get/route_manager.dart';

class LocalizationApp extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        ene: en,
        ara: ar,
        frf: fr,
      };
}
