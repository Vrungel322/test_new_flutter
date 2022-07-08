import 'package:feature_posts/feature_posts.dart';

class PostModule {
  static void initialise() {
    GetIt getIt = GetIt.instance;
    getIt.registerLazySingleton<BlocPosts>(() => BlocPosts(getIt.get<ApiHelperTest>()));
  }
}
