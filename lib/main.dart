import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyAfl5kr8ovZtFa83nwhIpSBDloxZ4pHwow",
        authDomain: "may-portfolio-site.firebaseapp.com",
        projectId: "may-portfolio-site",
        storageBucket: "may-portfolio-site.firebasestorage.app",
        messagingSenderId: "296087985826",
        appId: "1:296087985826:web:604c12ee98d69526c241fb",
        measurementId: "G-38R9GN8HEG"),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
