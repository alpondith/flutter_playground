import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'post_model.dart';

class PostState with ChangeNotifier {
  List<PostModel> posts = [];

  Future<void> load() async {
    
    http.Client client = http.Client();
    Uri url = Uri.parse('https://jsonplaceholder.typicode.com/posts');

    try {
      final response = await client.get(url);
      List<dynamic> data = json.decode(response.body);
      posts = data.map((item) => PostModel.fromJson(item)).toList();
      // for (int i = 0; i < data.length; i++) {
      //   posts.add(PostModel.fromJson(data[i]));
      // }
    } catch (e) {
      print(e);
    } finally {
      client.close();
    }

    notifyListeners();
  }
}
