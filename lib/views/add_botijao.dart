import 'package:flutter/material.dart';
import 'package:space_farming/views/componets/button.dart';
import 'package:space_farming/views/componets/cardComboBox.dart';
import 'package:space_farming/views/componets/cardEditText.dart';
import 'package:space_farming/views/componets/nav_draw.dart';
import 'package:space_farming/views/componets/secondaryAppBar.dart';
import 'package:space_farming/views/componets/titleOfScreen.dart';
import 'package:space_farming/views/my_icons_icons.dart';

class AddBotijao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width - 30;

    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 231, 236, 1.0),
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: SecAppBar(),
      ),
      drawer: NavigationDrawer(),
      body: Column(
        children: [
          TitleOfScreen(
            title: 'Cadastrar Botijão',
            font: "Revalia",
            fontSize: 24,
          ),
          CardEditText(
            icon: Icon(
              MyIcons.icon_botijao,
              color: Colors.red,
            ),
            hint: 'Identificação do Botijão',
            width: _width,
            marginTop: 14.0,
          ),
          CardEditText(
            icon: Icon(
              MyIcons.icon_cap,
              color: Colors.red,
            ),
            hint: "Capacidade de nitrogênio em litros",
            width: _width,
            marginTop: 10.0,
          ),
          CardComboBox(
            text: "Quantidade de canecas:",
            value: "1",
            itens: ["1", "2", "3", "4", "5", "6"],
            width: _width,
            marginTop: 10.0,
          ),
          CardComboBox(
            text: "Quantidade de racks por caneca:",
            value: "1",
            itens: ["1", "2", "3", "4", "5", "6"],
            width: _width,
            marginTop: 10.0,
          ),
          CardComboBox(
            text: "Quantidade de palhetas por rack:",
            value: "1",
            itens: ["1", "2", "3", "4", "5", "6"],
            width: _width,
            marginTop: 10.0,
          ),
          Container(
            margin: EdgeInsets.only(top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonCustom(
                  text: "Confirmar",
                  onclick: () {
                    Navigator.pop(context);
                  },
                  width: 148.0,
                ),
                ButtonCustom(
                  text: "Cancelar",
                  onclick: () {
                    Navigator.pop(context);
                  },
                  width: 148.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
