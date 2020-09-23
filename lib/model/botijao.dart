import 'dart:convert';

class Botijao {
  String id;
  double maxVolume;
  double atualVolume;
  int qtdCanecas;
  int qtdRacks;
  Botijao({
    this.id,
    this.maxVolume,
    this.atualVolume,
    this.qtdCanecas,
    this.qtdRacks,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'maxVolume': maxVolume,
      'atualVolume': atualVolume,
      'qtdCanecas': qtdCanecas,
      'qtdRacks': qtdRacks,
    };
  }

  factory Botijao.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Botijao(
      id: map['id'],
      maxVolume: map['maxVolume'],
      atualVolume: map['atualVolume'],
      qtdCanecas: map['qtdCanecas'],
      qtdRacks: map['qtdRacks'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Botijao.fromJson(String source) =>
      Botijao.fromMap(json.decode(source));
}
