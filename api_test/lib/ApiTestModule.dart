import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'ApiHelperTest.dart';
import 'RestClient.dart';

class ApiTestModule {
  static void initialise() {
    GetIt getIt = GetIt.instance;
    getIt.registerLazySingleton<Dio>(() => Dio());
    getIt.registerLazySingleton<RestClient>(() => RestClient(getIt<Dio>()));
    getIt.registerLazySingleton<ApiHelperTest>(() => ApiHelperTest(getIt<RestClient>()));
  }
}
