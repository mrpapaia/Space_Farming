import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:space_farming/model/teste.dart';
import 'package:space_farming/views/componets/gridViewList.dart';
import 'package:space_farming/views/componets/mainAppBar.dart';

import '../control/controller.dart';
import 'componets/nav_draw.dart';
import 'componets/titleOfScreen.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  final controller = Controller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 231, 236, 1.0),
      drawer: NavigationDrawer(),
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: MainAppBar(),
      ),
      body: Column(
        children: [
          TitleOfScreen(
            title: "Lista de Botijões",
            font: "Revalia",
            fontSize: 24,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 160,
            child: GridViewList(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          //await Navigator.pushNamed(context, "/addBotijao");
          var t = Teste();
          t.create();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
