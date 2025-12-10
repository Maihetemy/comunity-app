import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseTestPage extends StatefulWidget {
  const FirebaseTestPage({super.key});

  @override
  State<FirebaseTestPage> createState() => _FirebaseTestPageState();
}

class _FirebaseTestPageState extends State<FirebaseTestPage> {
  String message = "Checking Firebase...";

  @override
  void initState() {
    super.initState();
    checkFirebase();
  }

  Future<void> checkFirebase() async {
    try {
      // Get list of initialized apps
      var apps = await Firebase.apps;

      if (apps.isNotEmpty) {
        setState(() {
          message = "✅ Firebase is working!\nApp: ${apps.first.name}";
        });
      } else {
        setState(() {
          message = "❌ Firebase NOT initialized!";
        });
      }
    } catch (e) {
      setState(() {
        message = "❌ Error: $e";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firebase Test"),
      ),
      body: Center(
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}