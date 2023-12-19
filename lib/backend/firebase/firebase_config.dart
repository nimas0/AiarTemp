import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB8VYJPC7ZEWfn_SJwtdCQxYTotzHLn9aY",
            authDomain: "aiar-25d06.firebaseapp.com",
            projectId: "aiar-25d06",
            storageBucket: "aiar-25d06.appspot.com",
            messagingSenderId: "180498851714",
            appId: "1:180498851714:web:53b1471f75a8195544919b"));
  } else {
    await Firebase.initializeApp();
  }
}
