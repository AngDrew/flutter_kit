import 'dart:ui';

import 'package:shared_preferences/shared_preferences.dart';

import '../enums/app_language.dart';
import '../view_models/base_vm.dart';

const String _english = 'en';
const String _indonesian = 'id';
const String _system = 'sys';

class LanguageService extends BaseViewModel {
  LanguageService() {
    init();
  }

  Future<void> init() async {
    _sharedPref = await SharedPreferences.getInstance();

    final String? lang = _sharedPref.getString('appLanguage');

    if (lang == _english) {
      _language = AppLanguage.english;
    } else if (lang == _indonesian) {
      _language = AppLanguage.indonesia;
    } else if (lang == _system) {
      _language = AppLanguage.system;
    }

    refreshState();
  }

  AppLanguage _language = AppLanguage.system;
  AppLanguage get language => _language;

  Locale? get locale {
    if (language == AppLanguage.english) {
      return const Locale(_english);
    } else if (language == AppLanguage.indonesia) {
      return const Locale(_indonesian);
    }
    return null;
  }

  late final SharedPreferences _sharedPref;

  void changeLanguage(AppLanguage language) {
    _language = language;

    if (language == AppLanguage.english) {
      _sharedPref.setString('appLanguage', _english);
    } else if (language == AppLanguage.indonesia) {
      _sharedPref.setString('appLanguage', _indonesian);
    } else if (language == AppLanguage.system) {
      _sharedPref.setString('appLanguage', _system);
    }

    refreshState();
  }
}
