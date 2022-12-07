class Age {
  int? age;
  int? count;
  String? name;

  Age({this.age, this.count, this.name});

  factory Age.fromJson(Map<String, dynamic> json) => Age(
        age: json['age'] as int?,
        count: json['count'] as int?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'age': age,
        'count': count,
        'name': name,
      };
}
