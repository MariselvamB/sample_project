import 'entry.dart';

class Puplic {
  int? count;
  List<Entry>? entries;

  Puplic({this.count, this.entries});
  factory Puplic.fromJson(Map<String, dynamic> json) => Puplic(
        count: json['count'] as int?,
        entries: (json['entries'] as List<dynamic>?)
            ?.map((e) => Entry.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'count': count,
        'entries': entries?.map((e) => e.toJson()).toList(),
      };

  static void add(Puplic puplic) {}
}
