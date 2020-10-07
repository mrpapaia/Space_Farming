import 'dart:convert';

import 'rack.dart';

class Caneca {
  String id;
  List<Rack> racks;
  Caneca({
    this.id,
    this.racks,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'racks': racks?.map((x) => x?.toMap())?.toList(),
    };
  }

  Caneca.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];
    this.racks = List<Rack>.from(map['racks']?.map((x) => Rack.fromMap(x)));
  }

  String toJson() => json.encode(toMap());

  factory Caneca.fromJson(String source) => Caneca.fromMap(json.decode(source));

  @override
  String toString() => 'Caneca(id: $id, racks: $racks)';
}
