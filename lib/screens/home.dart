import 'package:firbase_test/screens/login_screen.dart';
import 'package:firbase_test/services/auth_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () async {
                await AuthService().logout();
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => Login()));
              },
              icon: Icon(
                Icons.logout,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(
        children: [Text('Home Screen')],
      ),
    );
  }
}
