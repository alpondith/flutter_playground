import 'package:flutter/material.dart';
import 'package:gallery_api/gallery_state.dart';
import 'package:provider/provider.dart';

class GalleryView extends StatelessWidget {
  GalleryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<GalleryState>().load("bangladesh");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
        centerTitle: true,
      ),
      body: Consumer<GalleryState>(
        builder: (context, state, child) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  child: TextFormField(
                    onChanged: (value) {
                      Future.delayed(const Duration(seconds: 1), () {
                        state.load(value);
                      });
                    },
                  ),
                ),
                state.links.isEmpty
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Container(
                        margin: EdgeInsets.all(10),
                        child: GridView.builder(
                          shrinkWrap: true,
                          itemCount: state.links.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 2,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20,
                          ),
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(state.links[index]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
              ],
            ),
          );
        },
      ),
    );
  }
}
