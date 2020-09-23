import 'package:flutter/material.dart';
import 'package:space_farming/views/componets/nav_draw.dart';
import 'package:space_farming/views/componets/titleOfScreen.dart';

import 'componets/secondaryAppBar.dart';

class InfoBotijao extends StatelessWidget {
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
          Center(
            child: Container(
              child: Center(
                child: Text(
                  "Botijão 1",
                  style: TextStyle(
                    fontFamily: "Robot",
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
              width: _width - 100,
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
          Container(
            child: Image(
              image: AssetImage("graphics/botijao.png"),
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
          TitleOfScreen(
            title: "Régua",
            font: "Revalia",
            fontSize: 34,
          ),
          InkWell(
            child: Container(
              child: Stack(
                children: [
                  InkWell(
                    child: Image(
                      image: AssetImage("graphics/regua.png"),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/infoNitrogenio");
                    },
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.transparent,
                      inactiveTrackColor: Colors.transparent,
                      trackShape: RectangularSliderTrackShape(),
                      trackHeight: 5.0,
                      thumbColor: Colors.black,
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 5,
                      ),
                      overlayColor: Colors.red.withAlpha(0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 3.0),
                    ),
                    child: Slider(
                      value: 0,
                      min: 0,
                      max: 100,
                      onChanged: (value) {
                        value = value;
                      },
                    ),
                  ),
                ],
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
        ],
      ),
    );
  }
}
