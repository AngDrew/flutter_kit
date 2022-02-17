import 'package:get_it/get_it.dart';

import 'global_key_service.dart';
import 'network_service.dart';

GetIt locator = GetIt.I;

void setupLocator() {
  locator.registerLazySingleton(() => NetworkService());
  locator.registerLazySingleton(() => GlobalKeyService());

  // TODO(Anyone): register repo here
}
