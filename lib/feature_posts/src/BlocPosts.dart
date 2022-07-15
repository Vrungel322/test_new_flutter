part of feature_posts;

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
