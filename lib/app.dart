import 'package:api_practice/pages/post_page.dart';
import 'package:flutter/material.dart';

class ApiPracticeApp extends StatelessWidget {
  const ApiPracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PostPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}