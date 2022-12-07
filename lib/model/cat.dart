class Cat {
  String? fact;
  int? length;

  Cat({this.fact, this.length});

  factory Cat.fromJson(Map<String, dynamic> json) => Cat(
        fact: json['fact'] as String?,
        length: json['length'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'fact': fact,
        'length': length,
      };
}
