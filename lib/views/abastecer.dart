import 'package:flutter/material.dart';
import 'package:space_farming/views/componets/containerBase.dart';
import 'package:space_farming/views/componets/editText.dart';
import 'package:space_farming/views/componets/secondaryAppBar.dart';
import 'package:space_farming/views/componets/titleOfScreen.dart';

import 'componets/button.dart';
import 'componets/nav_draw.dart';

class AbastecerBotijao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(
            double.infinity,
            100,
          ),
          child: SecAppBar()),
      drawer: NavigationDrawer(),
      backgroundColor: Color.fromRGBO(229, 231, 236, 1.0),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TitleOfScreen(
              title: "Abastecer",
              font: "Revalia",
              fontSize: 32,
            ),
            TitleOfScreen(
              title: "Responsavel",
              font: "Robot",
              fontSize: 32,
            ),
            SizedBox(
              height: 10,
            ),
            ContainerBase(
              componets: <Widget>[
                EditText(
                    hint: "Nome",
                    icon: Icon(Icons.person, color: Colors.red)),
                EditText(
                    hint: "E-mail",
                    icon: Icon(Icons.email, color: Colors.red)),
                EditText(
                    hint: "Telefone",
                    icon: Icon(Icons.phone, color: Colors.red)),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TitleOfScreen(
              title: "Fornecedor",
              font: "Robot",
              fontSize: 32,
            ),
            SizedBox(
              height: 10,
            ),
            ContainerBase(componets: <Widget>[
              EditText(
                  hint: "Nome",
                  icon: Icon(Icons.person, color: Colors.red)),
              EditText(
                  hint: "Telefone",
                  icon: Icon(Icons.phone, color: Colors.red)),
              EditText(
                hint: "Endereço",
                icon: Icon(Icons.attach_money, color: Colors.red),
              ),
              SizedBox(
                height: 10,
              ),
            ]),
            SizedBox(
              height: 10,
            ),
            TitleOfScreen(
              title: "Nitrogênio",
              font: "Robot",
              fontSize: 32,
            ),
            SizedBox(
              height: 10,
            ),
            ContainerBase(
              componets: <Widget>[
                EditText(
                    hint: "Nível",
                    icon: Icon(Icons.poll, color: Colors.red)),
                EditText(
                    hint: "Data",
                    icon:
                        Icon(Icons.calendar_today, color: Colors.red)),
                EditText(
                    hint: "Preço",
                    icon: Icon(Icons.attach_money, color: Colors.red)),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
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
      ),
    );
  }
}
