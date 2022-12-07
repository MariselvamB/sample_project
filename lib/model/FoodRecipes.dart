class Food {
  String? name;
  String? images;
  double? rating;
  String? totalTime;

  Food({
    required this.name,
    this.images,
    this.rating,
    this.totalTime,
  });

  factory Food.fromJson(Map<String, dynamic> json) => Food(
        name: json['name'] as String?,
        images: json['images'][0]["hostedLargeUrl"] as String?,
        rating: json['rating'] as double?,
        totalTime: json['totalTime'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'images': images,
        'rating': rating,
        'totalTime': totalTime,
      };
}
// const unirest = require("unirest");

// const req = unirest("GET", "https://yummly2.p.rapidapi.com/feeds/list");

// req.query({
// 	"limit": "24",
// 	"start": "0"
// });

// req.headers({
// 	"X-RapidAPI-Key": "5a0193f800msh3df8a67b3387116p1898fbjsnc7ff032504db",
// 	"X-RapidAPI-Host": "yummly2.p.rapidapi.com",
// 	"useQueryString": true
// });
