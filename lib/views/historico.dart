import 'package:flutter/material.dart';
import 'package:space_farming/views/componets/historicoAbastecimento.dart';
import 'package:space_farming/views/componets/historicoNivel.dart';

import 'componets/nav_draw.dart';
import 'componets/secondaryAppBar.dart';
import 'componets/titleOfScreen.dart';

class Historico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size(
                double.infinity,
                100,
              ),
              child: SecAppBar()),
          drawer: NavigationDrawer(),
          backgroundColor: Color.fromRGBO(229, 231, 236, 1.0),
          body: Column(
            children: [
              TitleOfScreen(
                title: "Histórico do Botijão",
                font: "Revalia",
                fontSize: 24,
              ),
              Container(
                height: MediaQuery.of(context).size.height - 200,
                child: TabBarView(
                  children: [
                    HistoricoNivel(),
                    SingleChildScrollView(child: HistoricoAbastecimento()),
                  ],
                ),
              ),
            ],
          ),
          bottomSheet: Container(
            height: 50,
            color: Colors.white,
            child: TabBar(
              tabs: [
                Text(
                  "Informações",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Estados",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
              indicatorColor: Colors.red,
              labelColor: Colors.red,
            ),
          ),
        ));
  }
}
