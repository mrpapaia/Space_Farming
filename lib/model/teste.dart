import 'package:firebase_core/firebase_core.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'botijao.dart';

class Teste {
  create() async {
    UserCredential userCredential;
    await Firebase.initializeApp();
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    FirebaseAuth auth = FirebaseAuth.instance;
    auth.signOut();
    try {
      userCredential = await auth.signInWithEmailAndPassword(
          email: "teste@gmail.com", password: "123456");
      print(userCredential.user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
    CollectionReference botijao =
        firestore.collection('MXv6IXkxEnYxCj5cwQL27saiytC3');
    //DocumentSnapshot wwq = await botijao.doc("DEFrqV9cKQSSucN487VP").get();
    QuerySnapshot a = await botijao.get();

    a.docs.forEach((element) async {
      DocumentSnapshot q = await botijao.doc(element.id).get();
      print(q.data());
      CollectionReference q1 = botijao.doc(element.id).collection("botijoes");
      QuerySnapshot a1 = await q1.get();
      a1.docs.forEach((element1) async {
        print(element1.data());
        CollectionReference q2 = q1.doc(element1.id).collection("existente");
        QuerySnapshot a2 = await q2.get();
        a2.docs.forEach((element2) async {
          //DocumentSnapshot te = await q2.doc(element2.id).get();
          print(element2.data());
        });
      });
    });
  }
}
