import 'package:feature_posts/feature_posts.dart';

class PostModule {
  static void initialise(Injector injector) {
    injector.map<BlocPosts>((i) => BlocPosts(i.get<ApiHelperTest>()), isSingleton: true);
  }
}
