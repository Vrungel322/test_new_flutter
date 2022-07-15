import '../api_test/Post.dart';
import '../core_logic/BaseState.dart';

abstract class PostState extends BaseState {}

class NotLoadedPosts extends PostState {}

class LoadedPosts extends PostState {
  final List<Post> posts;

  LoadedPosts(this.posts);
}