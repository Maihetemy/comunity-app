import 'package:firbase_test/screens/login_screen.dart';
import 'package:firbase_test/screens/signup_screen.dart';
import 'package:firbase_test/screens/splash_screen.dart';
import 'package:firbase_test/screens/test-screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA0ibK9mik-O09-Fgwqt81Hy6Ky27onCdM",
            authDomain: "hello-9b764.firebaseapp.com",
            projectId: "hello-9b764",
            storageBucket: "hello-9b764.firebasestorage.app",
            messagingSenderId: "748620638764",
            appId: "1:748620638764:web:fdcd3bb5efee70a7ed3f89",
            measurementId: "G-GGW9QPPS8F"));
  } else {
    Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
