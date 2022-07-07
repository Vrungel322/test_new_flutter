import 'package:api_test/Post.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'RestClient.g.dart';


@RestApi(baseUrl: "https://jsonplaceholder.typicode.com/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/posts")
  Future<List<Post>> getTasks();
}
