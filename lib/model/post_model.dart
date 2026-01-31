class PostModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostModel({this.userId, this.id, this.title, this.body});

  factory PostModel.fromJson(Map<String, dynamic> jsonPostModel) {
    return PostModel(
      userId: jsonPostModel['userId'],
      id: jsonPostModel['id'],
      title: jsonPostModel['title'],
      body: jsonPostModel['body'],
    );
  }
}
