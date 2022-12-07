class User {
  int? userId;
  int? id;
  String? title;
  String? body;

  User({this.userId, this.id, this.title, this.body});

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json['userId'] as int?,
        id: json['id'] as int?,
        title: json['title'] as String?,
        body: json['body'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'id': id,
        'title': title,
        'body': body,
      };
}
