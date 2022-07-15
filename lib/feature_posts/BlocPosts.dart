import 'package:flutter_bloc/flutter_bloc.dart';

// import '../api_test/ApiHelperTest.dart';
// import '../api_test/Post.dart';
import '../api_test/api_test.dart';
import '../core_logic/BaseCustomBloc.dart';
import '../core_logic/BaseState.dart';
import 'PostEvent.dart';
import 'PostState.dart';

class BlocPosts extends BaseCustomBloc<PostEvent, PostState> {
  final ApiHelperTest _apiHelperTest;

  BlocPosts(this._apiHelperTest) : super(NotLoadedPosts()) {
    on<LoadPosts>(_onLoadPosts);
  }

  void _onLoadPosts(LoadPosts event, Emitter<BaseState> emit) async {
    emit(ShowLoadingState());
    List<Post> posts = await _apiHelperTest.getPosts2();
    emit(LoadedPosts(posts));
  }
}
