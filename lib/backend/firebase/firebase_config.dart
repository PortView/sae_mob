import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB7uBXHxT_j7Q5aabk8aa6KSXVLSPvhxoo",
            authDomain: "saesistemmob.firebaseapp.com",
            projectId: "saesistemmob",
            storageBucket: "saesistemmob.appspot.com",
            messagingSenderId: "215611998432",
            appId: "1:215611998432:web:e6fd4fe1e4d26135939085"));
  } else {
    await Firebase.initializeApp();
  }
}
