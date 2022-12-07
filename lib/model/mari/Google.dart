import 'data.dart';

class Google {
  Data? data;

  Google({this.data});

  factory Google.fromJson(Map<String, dynamic> json) => Google(
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'data': data?.toJson(),
      };
}
