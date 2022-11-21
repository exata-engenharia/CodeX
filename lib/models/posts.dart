import 'dart:convert';

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(Post data) => json.encode(data.toJson());

class Post {
  Post({
    required this.msm,
  });

  String msm;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        msm: json["msm"],
      );

  Map<String, dynamic> toJson() => {
        "msm": msm,
      };
}
