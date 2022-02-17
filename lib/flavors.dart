// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: constant_identifier_names
// ignore_for_file: flutter_style_todos

enum Flavor {
  AppOne,
  AppTwo,
}

class F {
  static Flavor? appFlavor;

  static bool get isAppOne => appFlavor == Flavor.AppOne;

  static String get title {
    switch (appFlavor) {
      case Flavor.AppOne:
        return 'AppOne';
      case Flavor.AppTwo:
        return 'AppTwo';
      default:
        return 'UnknownFlavor! check flavors.dart';
    }
  }

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.AppOne:
        return 'https://api.AppOne.co.id';
      case Flavor.AppTwo:
        return 'https://api.AppTwo.co.id';
      default:
        return 'UnknownFlavor! check flavors.dart';
    }
  }

  static String get dummy {
    switch (appFlavor) {
      case Flavor.AppOne:
        return 'AppOne';
      case Flavor.AppTwo:
        return 'AppTwo';
      default:
        return 'UnknownFlavor! check flavors.dart';
    }
  }
}
