part of feature_interceptors;

class ApiInterceptorsModule {
  static const String LOGIN_INTERCEPTOR_NAME = 'LOGIN_INTERCEPTOR_NAME';

  static void initialise() {
    GetIt getIt = GetIt.instance;
    getIt.registerLazySingleton<Interceptor>(instanceName: LOGIN_INTERCEPTOR_NAME, () => LoggingInterceptor());
  }
}
