

part of feature_posts;


class PostModule {
  static void initialise() {
    GetIt getIt = GetIt.instance;
    getIt.registerLazySingleton<BlocPosts>(() => BlocPosts(getIt.get<ApiHelperTest>()));
  }
}
