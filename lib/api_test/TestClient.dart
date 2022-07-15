part of api_test;

// command for generate _TestClient if module is flutter module:  flutter pub run build_runner build --delete-conflicting-outputs
// command for generate _TestClient if module is dart module:     dart pub run build_runner build --delete-conflicting-outputs
@RestApi(baseUrl: "https://jsonplaceholder.typicode.com/")
abstract class TestClient {
  factory TestClient(Dio dio, {String baseUrl}) = _TestClient;

  @GET("/posts")
  Future<List<Post>> getTasks();
}
