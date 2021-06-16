import 'package:get_it/get_it.dart';
import 'package:jakarta_bottle_bank/Controller/jbb_rest_service.dart';

GetIt service = GetIt.instance;

void init() {
  // service.registerLazySingleton(() => TodoDataService());
  service.registerLazySingleton(() => RestService());
}
