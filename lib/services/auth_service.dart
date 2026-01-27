import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // ===============================Login=============================
  Future<String> LoginFunciton(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return 'Success';
    } on FirebaseAuthException catch (e) {
      return e.message ?? 'Login Failed';
    }
  }
}


// how to write a function
  // dataType funtionName (parameters) {
  //        function body
  // }
