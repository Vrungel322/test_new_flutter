part of 'api_test.dart';

class ApiHelperTest {
  final TestClient _client;

  ApiHelperTest(this._client);

  Future<List<Post>> getPosts2() {
    return _client.getTasks();
  }
}
