import 'package:api_test/api_test.dart';
import 'package:core_logic/core_logic.dart';

abstract class PostState extends BaseState {}

class NotLoadedPosts extends PostState {}

class LoadedPosts extends PostState {
  final List<Post> posts;

  LoadedPosts(this.posts);
}
