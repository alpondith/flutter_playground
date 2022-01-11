import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class GalleryState with ChangeNotifier {
  List<String> titles = [];
  List<String> links = [];

  void load(String searchKey) async {
    links.clear();
    var url = Uri.parse(
        'https://api.unsplash.com/search/photos?client_id=EDzRqWfGVnjbfxE-S-4ISH9Gq8dKIpg7h2wpyi-CJ3E&query=$searchKey');
    var response = await http.get(url);

    var data = jsonDecode(response.body);
    data = data['results'];

    for (var item in data) {
      links.add(item['urls']['regular']);
    }

    notifyListeners();
  }
}
