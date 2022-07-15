part of api_test;

class ApiHelperTest {
  final TestClient _client;

  ApiHelperTest(this._client);

  Future<List<Post>> getPosts2() {
    return _client.getTasks();
  }
}
