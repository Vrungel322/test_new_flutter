part of 'api_test.dart';

class ApiTestModule {
  static void initialise() {
    GetIt getIt = GetIt.instance;
    DioModule.initialise();
    getIt.registerLazySingleton<TestClient>(() => TestClient(getIt<Dio>(instanceName: DioModule.DIO_DEFAULT)));
    getIt.registerLazySingleton<ApiHelperTest>(() => ApiHelperTest(getIt<TestClient>()));
  }
}
