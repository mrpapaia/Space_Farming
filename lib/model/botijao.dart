import 'dart:convert';

import 'caneca.dart';

class Botijao {
  String idBot;
  int qtdDose;
  int volAtual;
  double volTotal;
  int numcanecas;
  List<Caneca> canecas;
  Botijao({
    this.idBot,
    this.qtdDose,
    this.volAtual,
    this.volTotal,
    this.numcanecas,
    this.canecas,
  });

  Map<String, dynamic> toMap() {
    return {
      'idBot': idBot,
      'qtdDose': qtdDose,
      'volAtual': volAtual,
      'volTotal': volTotal,
      'numcanecas': numcanecas,
      'canecas': canecas?.map((x) => x?.toMap())?.toList(),
    };
  }

  Botijao.fromMap(Map<String, dynamic> map) {
    this.idBot = map['idBot'];
    this.qtdDose = map['qtdDose'];
    this.volAtual = map['volAtual'];
    this.volTotal = map['volTotal'];
    this.numcanecas = map['numcanecas'];
    // this.canecas =
    //    List<Caneca>.from(map['canecas']?.map((x) => Caneca.fromMap(x)));
  }

  String toJson() => json.encode(toMap());

  factory Botijao.fromJson(String source) =>
      Botijao.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Botijao(idBot: $idBot, qtdDose: $qtdDose, volAtual: $volAtual, volTotal: $volTotal, numcanecas: $numcanecas, canecas: $canecas)';
  }
}
