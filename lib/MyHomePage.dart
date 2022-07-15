import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './api_test/Post.dart';
import './core_logic/BaseState.dart';
import './feature_posts/BlocPosts.dart';
import './feature_posts/PostEvent.dart';
import './feature_posts/PostState.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    context.read<BlocPosts>()..add(LoadPosts());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: BlocBuilder<BlocPosts, BaseState>(
            bloc: context.read<BlocPosts>(),
            builder: (context, state) {
              if (state is ShowLoadingState) {
                return const Text('Loading...');
              }
              if (state is NotLoadedPosts) {
                return const Text('no Posts');
              }
              if (state is LoadedPosts) {
                return _loadedPosts(state.posts);
              }
              return const Text('no State');
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _loadedPosts(List<Post> posts) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('Posts count:'),
        Text(
          '${posts.length}',
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}
