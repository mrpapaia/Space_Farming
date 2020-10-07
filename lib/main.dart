import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:space_farming/views/abastecer.dart';
import 'package:space_farming/views/add_botijao.dart';
import 'package:space_farming/views/info_botijao.dart';
import 'package:space_farming/views/info_nitrogenio.dart';
import 'package:space_farming/views/medirNivel.dart';

import 'views/historico.dart';
import 'views/home.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Space Faming',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "/": (context) => Home(),
        "/addBotijao": (context) => AddBotijao(),
        "/infoBotijao": (context) => InfoBotijao(),
        "/infoNitrogenio": (context) => InfoNitrogenio(),
        "/mediNivel": (context) => MedirNivel(),
        "/abastecerBotijao": (context) => AbastecerBotijao(),
        "/historico": (context) => Historico(),
      },
    );
  }
}
