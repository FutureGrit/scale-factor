import 'package:get_it/get_it.dart';

import 'package:scale_factor/services/main_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => MainService());
}
