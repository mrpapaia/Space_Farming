import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mobx/mobx.dart';

import 'package:space_farming/dao/botijaoDAO.dart';
import 'package:space_farming/dao/interfaces/interfaceBotijaoDAO.dart';
import 'package:space_farming/model/botijao.dart';
import 'package:space_farming/model/farm.dart';

part 'controler_home.g.dart';

class ControlerHome = _ControlerHomeBase with _$ControlerHome;

abstract class _ControlerHomeBase with Store {
  final BotijaoDAO botijaoDAO = BotijaoDAO();

  @observable
  ObservableStream<List<Farm>> listBotijao;
  _ControlerHomeBase({
    this.listBotijao,
  }) {
    getList();
  }

  @action
  getList() {
    Future<FirebaseApp> app = Firebase.initializeApp();
    listBotijao = botijaoDAO.lista('test').asObservable();
  }
}
