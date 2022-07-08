import 'package:api_test/Post.dart';

import 'RestClient.dart';

class ApiHelperTest {
  final RestClient _client;

  ApiHelperTest(this._client);

  Future<List<Post>> getPosts2() {
    return _client.getTasks();
  }
}
