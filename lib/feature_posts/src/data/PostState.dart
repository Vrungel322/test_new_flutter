part of feature_posts;

abstract class PostState extends BaseState {}

class NotLoadedPosts extends PostState {}

class LoadedPosts extends PostState {
  final List<Post> posts;

  LoadedPosts(this.posts);
}
