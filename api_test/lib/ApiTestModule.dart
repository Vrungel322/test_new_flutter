import 'package:dio/dio.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';

import 'ApiHelperTest.dart';
import 'RestClient.dart';

class ApiTestModule {
  static void initialise(Injector injector) {
    injector.map<Dio>((i) => Dio(), isSingleton: true);
    injector.map<RestClient>((i) => RestClient(i.get<Dio>()), isSingleton: true);
    injector.map<ApiHelperTest>((i) => ApiHelperTest(i.get<RestClient>()), isSingleton: true);
  }
}
