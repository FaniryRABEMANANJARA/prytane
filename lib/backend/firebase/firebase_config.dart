import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCcmtKIemADD-OH-e4Ef16Bl_QJ_73ASe4",
            authDomain: "prytane-29c10.firebaseapp.com",
            projectId: "prytane-29c10",
            storageBucket: "prytane-29c10.appspot.com",
            messagingSenderId: "644115233622",
            appId: "1:644115233622:web:5b16cc1077e120ff0374f7"));
  } else {
    await Firebase.initializeApp();
  }
}
