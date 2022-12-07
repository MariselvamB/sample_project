import 'dart:convert';

class ImageUpload {
  String? image;
  String? album;
  String? type;
  String? name;
  String? title;
  String? description;
  ImageUpload(
      {required this.image,
      required this.album,
      required this.type,
      required this.name,
      required this.title,
      required this.description});

  factory ImageUpload.fromJson(Map<String, dynamic> json) => ImageUpload(
      image: json["image"],
      album: json["album"],
      type: json["type"],
      name: json["name"],
      title: json["title"],
      description: json["album"]);

  Map<String, dynamic> toJson() => {
        'image': image,
        'album': album,
        'type': type,
        'name': name,
        'title': title,
        'description': description,
      };
}
