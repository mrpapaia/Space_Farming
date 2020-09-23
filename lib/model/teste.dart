import 'package:firebase_core/firebase_core.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class Teste {
  create() async {
    print("cu2");
    await Firebase.initializeApp();
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    CollectionReference botijao = firestore.collection('botijoes');
    QuerySnapshot a = await botijao.get();

    a.docs.forEach((element) async {
      CollectionReference q = firestore
          .collection('botijoes')
          .doc(element.id)
          .collection("canecas");
      QuerySnapshot a1 = await q.get();
      print(element.id);

      a1.docs.forEach((element1) async {
        print(element1.data());
        CollectionReference q1 = firestore
            .collection('botijoes')
            .doc(element.id)
            .collection("canecas")
            .doc(element1.id)
            .collection("racks");
        QuerySnapshot a2 = await q1.get();
        a2.docs.forEach((element2) {
          print(element2.data());
        });
      });
    });
  }
}
