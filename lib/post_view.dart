import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'post_state.dart';

class PostView extends StatelessWidget {
  const PostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<PostState>().load();
    // List<PostModel> posts = context.watch<HomeState>().posts;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Consumer<PostState>(
          builder: (context, postState, child) {
            return postState.posts.isEmpty
                ? CircularProgressIndicator()
                : ListView.builder(
                    itemCount: postState.posts.length,
                    itemBuilder: (context, index) {
                      return Container(
                        color: Colors.amber,
                        margin: const EdgeInsets.all(5),
                        child: ListTile(
                          title:
                              Text(postState.posts[index].title ?? 'No title'),
                        ),
                      );
                    },
                  );
          },
        ),
      ),
    );
  }
}
