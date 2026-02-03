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

  // ===============================Signup=============================
  Future<String> signupFunction(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return 'Success';
    } on FirebaseAuthException catch (e) {
      return e.message ?? 'Signup Failed';
    }
  }

  // ===============================Logout=============================
  Future<void> logout() async{
    await _auth.signOut();
  }
}


// how to write a function
  // dataType funtionName (parameters) {
  //        function body
  // }
