import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:space_farming/control/controler_home.dart';
import 'package:space_farming/model/farm.dart';
import 'package:space_farming/views/componets/gridViewList.dart';
import 'package:space_farming/views/componets/mainAppBar.dart';

import 'componets/nav_draw.dart';
import 'componets/titleOfScreen.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
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
            child: Observer(
              builder: (_) {
                ControlerHome clt = ControlerHome();
                List<Farm> list = clt.listBotijao.data;
                print(list);
                return GridViewList(
                  listBotijao: list,
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {},
        child: Icon(Icons.add),
      ),
    );
  }
}
