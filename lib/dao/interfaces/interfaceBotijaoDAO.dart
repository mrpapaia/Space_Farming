import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:space_farming/model/botijao.dart';

abstract class InterfaceBotijaoDAO {
  Future<bool> add(Botijao botijao);
  Future<bool> remove(String id);
  Future<bool> update(Botijao obj);
  Future<Botijao> search(String id);
  Stream<List<Botijao>> list(DocumentReference farm);
}
