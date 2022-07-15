import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../core_api/DioModule.dart';
import 'ApiHelperTest.dart';
import 'TestClient.dart';

class ApiTestModule {
  static void initialise() {
    GetIt getIt = GetIt.instance;
    DioModule.initialise();
    getIt.registerLazySingleton<TestClient>(() => TestClient(getIt<Dio>(instanceName: DioModule.DIO_DEFAULT)));
    getIt.registerLazySingleton<ApiHelperTest>(() => ApiHelperTest(getIt<TestClient>()));
  }
}
