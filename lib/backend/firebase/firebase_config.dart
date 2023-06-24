import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDt8tg2MkrTrMgE4DqUwgbaMZQ3YfiTpQM",
            authDomain: "avid-ceiling-374903.firebaseapp.com",
            projectId: "avid-ceiling-374903",
            storageBucket: "avid-ceiling-374903.appspot.com",
            messagingSenderId: "1033417766275",
            appId: "1:1033417766275:web:4ff8d248d2df808497f2b6",
            measurementId: "G-7HEC14YLK2"));
  } else {
    await Firebase.initializeApp();
  }
}
