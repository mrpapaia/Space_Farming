import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:space_farming/dao/interfaces/interfaceBotijaoDAO.dart';
import 'package:space_farming/model/botijao.dart';
import 'dart:convert';

import 'package:space_farming/model/caneca.dart';
import 'package:space_farming/model/farm.dart';
import 'package:space_farming/model/rack.dart';
import 'package:space_farming/views/home.dart';

class BotijaoDAO implements InterfaceBotijaoDAO {
  String _colecao = "botijoes";
  FirebaseApp app;
  FirebaseFirestore firestore;

  @override
  Future<bool> add(Botijao botijao) {
    throw UnimplementedError();
  }

  /*@override
  Future<List<Botijao>> list(String farmName) async {
    List<Botijao> listBotijao = new List<Botijao>();
    Botijao bot;
    app = await Firebase.initializeApp();

    var farm = await FirebaseFirestore.instance
        .collection('farms')
        .where('nome', isEqualTo: farmName)
        .get()
        .then((QuerySnapshot querySnapshot) => {
              querySnapshot.docs.forEach((doc) {
                doc.reference
                    .collection(_colecao)
                    .get()
                    .then((QuerySnapshot querySnapshot) => {
                          querySnapshot.docs.forEach((docBot) {
                            bot = Botijao.fromMap(docBot.data());
                            bot.canecas = getCanecas(docBot.reference
                                .collection(_colecao)
                                .doc(docBot.id)
                                .collection("canecas"));
                            listBotijao.add(bot);
                            print(listBotijao);
                          }),
                        });
              }),
            });
    print(farm.toList());
    return listBotijao;
  }*/

  @override
  Future<bool> remove(String id) {
    throw UnimplementedError();
  }

  @override
  Future<Botijao> search(String id) {
    throw UnimplementedError();
  }

  @override
  Future<bool> update(Botijao obj) {
    throw UnimplementedError();
  }

  List<Caneca> getCanecas(CollectionReference collection) {
    List<Caneca> listCaneca = new List<Caneca>();

    collection.get().then((QuerySnapshot querySnapshot) => {
          querySnapshot.docs.forEach((doc) {
            listCaneca.add(new Caneca(
              id: doc.id,
              racks: getRacks(
                collection.doc(doc.id).collection("racks"),
              ),
            ));
            print("aqui");
          })
        });
    return listCaneca;
  }

  List<Rack> getRacks(CollectionReference collection) {
    List<Rack> listRacks = new List<Rack>();
    collection.get().then((QuerySnapshot querySnapshot) => {
          querySnapshot.docs.forEach((doc) {
            listRacks.add(Rack.fromMap(doc.data()));
          }),
        });
    return listRacks;
  }

  Stream<List<Farm>> lista(String farmName) {
    return FirebaseFirestore.instance
        .collection('farms')
        .where('nome', isEqualTo: farmName)
        .snapshots()
        .map((query) {
      return query.docs.map((doc) {
        return Farm.fromMap(doc);
      }).toList();
    });
  }

  @override
  Stream<List<Botijao>> list(DocumentReference farm) {
    return farm.collection("botijoes").snapshots().map((query) {
      return query.docs.map((doc) {
        return Botijao.fromMap(doc.data());
      }).toList();
    });
  }
}
