import 'package:dio/dio.dart';
import 'package:feature_api_interceptors/feature_api_interceptors.dart';
import 'package:get_it/get_it.dart';

import 'ApiHelperTest.dart';
import 'RestClient.dart';

class ApiTestModule {
  static void initialise() {
    GetIt getIt = GetIt.instance;
    ApiInterceptorsModule.initialise();
    getIt.registerLazySingleton<Dio>(() {
      return Dio()..interceptors.add(getIt<Interceptor>(instanceName: ApiInterceptorsModule.LOGIN_INTERCEPTOR_NAME));
    });
    getIt.registerLazySingleton<RestClient>(() => RestClient(getIt<Dio>()));
    getIt.registerLazySingleton<ApiHelperTest>(() => ApiHelperTest(getIt<RestClient>()));
  }
}
