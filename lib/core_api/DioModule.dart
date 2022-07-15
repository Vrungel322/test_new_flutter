import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../feature_interceptors/ApiInterceptorsModule.dart';

class DioModule {
  static const String DIO_DEFAULT = 'DIO_DEFAULT';
  static const String DIO_AUTHENTICATED = 'DIO_AUTHENTICATED';

  static void initialise() {
    GetIt getIt = GetIt.instance;
    ApiInterceptorsModule.initialise();
    getIt.registerLazySingleton<Dio>(instanceName: DIO_DEFAULT, () {
      return Dio()..interceptors.add(getIt<Interceptor>(instanceName: ApiInterceptorsModule.LOGIN_INTERCEPTOR_NAME));
    });
  }
}
