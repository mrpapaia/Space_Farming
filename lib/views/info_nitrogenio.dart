import 'package:flutter/material.dart';
import 'package:space_farming/views/componets/button.dart';
import 'package:space_farming/views/componets/nav_draw.dart';
import 'package:space_farming/views/componets/titleOfScreen.dart';

import 'componets/secondaryAppBar.dart';

class InfoNitrogenio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width - 30;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(
            double.infinity,
            100,
          ),
          child: SecAppBar()),
      drawer: NavigationDrawer(),
      backgroundColor: Color.fromRGBO(229, 231, 236, 1.0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TitleOfScreen(
            title: "Nível Atual",
            font: "Revalia",
            fontSize: 32,
          ),
          Center(
            child: Container(
              child: Center(
                child: Text(
                  "0.0",
                  style: TextStyle(
                    fontFamily: 'Robot',
                    fontSize: 96,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
              width: _width - 30,
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 0,
                    offset: Offset(5, 5),
                  )
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonCustom(
                text: "Medir Nivel",
                onclick: () {
                  Navigator.pushNamed(context, "/mediNivel");
                },
                width: 309.0,
              ),
              ButtonCustom(
                text: "Abastecer",
                onclick: () {
                  Navigator.pushNamed(context, "/abastecerBotijao");
                },
                width: 309.0,
              ),
              ButtonCustom(
                text: "Hístorico do botijão",
                onclick: () {
                  Navigator.pushNamed(context, "/historico");
                },
                width: 309.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
