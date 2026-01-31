import 'dart:convert';
import 'dart:developer' as developer;

import 'package:api_practice/model/post_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<List<PostModel>> getAllPost() async {
    List<PostModel> posts = [];
    try {
      final baseUrl = Uri.parse('https://jsonplaceholder.typicode.com/posts');
      final response = await http.get(baseUrl);
      developer.log(response.body);

      var postList = jsonDecode(response.body.toString());

      if (response.statusCode == 200) {
        for (var post in postList) {
          posts.add(PostModel.fromJson(post as Map<String, dynamic>));
        }
      }
      return posts;
    } catch (e) {
      developer.log(e.toString());
      return [];
    }
  }
}
