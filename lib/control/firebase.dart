import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseControll {
  FirebaseApp app;
  FirebaseFirestore firestore;
  FirebaseAuth auth;

  iniciaApp() async {
    app = await Firebase.initializeApp();
    firestore = FirebaseFirestore.instance;
    auth = FirebaseAuth.instance;
  }
}
