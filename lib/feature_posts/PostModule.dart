import 'package:get_it/get_it.dart';

// import '../api_test/ApiHelperTest.dart';
import '../api_test/api_test.dart';
import 'BlocPosts.dart';

class PostModule {
  static void initialise() {
    GetIt getIt = GetIt.instance;
    getIt.registerLazySingleton<BlocPosts>(() => BlocPosts(getIt.get<ApiHelperTest>()));
  }
}
