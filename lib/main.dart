import 'package:feature_posts/feature_posts.dart';
import 'package:flutter/material.dart';

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
