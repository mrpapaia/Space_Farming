import 'package:flutter/material.dart';
import 'package:space_farming/views/componets/titleOfScreen.dart';

class GridViewList extends StatefulWidget {
  @override
  _GridViewListState createState() => _GridViewListState();
}

class _GridViewListState extends State<GridViewList> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        InkWell(
          child: Container(
            margin: EdgeInsets.only(top: 5, left: 10, bottom: 5, right: 10),
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Color.fromRGBO(248, 248, 251, 1.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0,
                  offset: Offset(4, 5),
                ),
              ],
            ),
            child: Column(
              children: [
                Image(
                  image: AssetImage('graphics/botijao2.png'),
                  width: 140,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  padding: EdgeInsets.all(2.0),
                  child: Center(
                    child: Text(
                      "Botijao 1",
                      style: TextStyle(
                          fontFamily: 'Revalia',
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ),
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, "/infoBotijao");
          },
        ),
        InkWell(
          child: Container(
            margin: EdgeInsets.only(top: 5, left: 10, bottom: 5, right: 10),
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Color.fromRGBO(248, 248, 251, 1.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0,
                  offset: Offset(4, 5),
                ),
              ],
            ),
            child: Column(
              children: [
                Image(
                  image: AssetImage('graphics/botijao6.png'),
                  width: 120,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  padding: EdgeInsets.all(2.0),
                  child: Center(
                    child: Text(
                      "Botijao 1",
                      style: TextStyle(
                          fontFamily: 'Revalia',
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ),
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, "/infoBotijao");
          },
        ),
        InkWell(
          child: Container(
            margin: EdgeInsets.only(top: 5, left: 10, bottom: 5, right: 10),
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Color.fromRGBO(248, 248, 251, 1.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0,
                  offset: Offset(4, 5),
                ),
              ],
            ),
            child: Column(
              children: [
                Image(
                  image: AssetImage('graphics/botijao8.png'),
                  width: 120,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  padding: EdgeInsets.all(2.0),
                  child: Center(
                    child: Text(
                      "Botijao 1",
                      style: TextStyle(
                          fontFamily: 'Revalia',
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ),
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, "/infoBotijao");
          },
        ),
        InkWell(
          child: Container(
            margin: EdgeInsets.only(top: 5, left: 10, bottom: 5, right: 10),
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Color.fromRGBO(248, 248, 251, 1.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0,
                  offset: Offset(4, 5),
                ),
              ],
            ),
            child: Column(
              children: [
                Image(
                  image: AssetImage('graphics/botijao10.png'),
                  width: 120,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  padding: EdgeInsets.all(2.0),
                  child: Center(
                    child: Text(
                      "Botijao 1",
                      style: TextStyle(
                          fontFamily: 'Revalia',
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ),
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, "/infoBotijao");
          },
        ),
      ],
    );
  }
}
