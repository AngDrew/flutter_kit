import '../view_models/base_vm.dart';
import 'language_service.dart';
import 'theme_service.dart';

class ConfigService extends BaseViewModel {
  ConfigService({required this.language, required this.theme});

  LanguageService language;
  ThemeService theme;
}
