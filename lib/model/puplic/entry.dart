class Entry {
  String? api;
  String? description;
  String? auth;
  bool? https;
  String? cors;
  String? link;
  String? category;

  Entry({
    this.api,
    this.description,
    this.auth,
    this.https,
    this.cors,
    this.link,
    this.category,
  });

  factory Entry.fromJson(Map<String, dynamic> json) => Entry(
        api: json['API'] as String?,
        description: json['Description'] as String?,
        auth: json['Auth'] as String?,
        https: json['HTTPS'] as bool?,
        cors: json['Cors'] as String?,
        link: json['Link'] as String?,
        category: json['Category'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'API': api,
        'Description': description,
        'Auth': auth,
        'HTTPS': https,
        'Cors': cors,
        'Link': link,
        'Category': category,
      };
}
