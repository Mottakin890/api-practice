import 'dart:convert';
import 'dart:developer' as developer;

import 'package:api_practice/model/post_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<List<PostModel>> getAllPost() async {
    try {
      final baseUrl = Uri.parse('https://jsonplaceholder.typicode.com/posts');
      final response = await http.get(baseUrl);

      if (response.statusCode != 200) {
        developer.log('Failed : ${response.statusCode}');
        return [];
      }

      final List<dynamic> posts = jsonDecode(response.body);

      return posts
          .whereType<Map<String, dynamic>>()
          .map((post) => PostModel.fromJson(post))
          .toList();
    } catch (e) {
      developer.log(e.toString());
      return [];
    }
  }
}
