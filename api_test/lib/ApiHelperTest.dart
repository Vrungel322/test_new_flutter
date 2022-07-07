import 'package:api_test/Post.dart';
import 'package:api_test/RestClient.dart';
import 'package:dio/dio.dart';

class ApiHelperTest {
  final client = RestClient(Dio());

  Future<List<Post>> getPosts2() {
    return client.getTasks();
  }
}


