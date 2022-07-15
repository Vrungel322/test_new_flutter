import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

// import './api_test/ApiTestModule.dart';
import './api_test/api_test.dart';
// import './feature_posts/BlocPosts.dart';
// import './feature_posts/PostModule.dart';
import './feature_posts/feature_posts.dart';
import 'MyHomePage.dart';

void main() {
  //init all dependencies via Injector.
  // ORDER MATTERS
  ApiTestModule.initialise();
  PostModule.initialise();

  final app = const MyApp();

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<BlocPosts>(
        create: (context) {
          return GetIt.instance.get<BlocPosts>();
        },
      ),
    ],
    child: app,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
