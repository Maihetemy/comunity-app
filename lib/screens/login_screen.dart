// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Colors.purple, Color.fromARGB(255, 72, 33, 243)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //email textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    controller: emailController,
                    decoration: InputDecoration(
                        //   hintText: 'Enter your Email or UserName',
                        //   hintStyle: TextStyle(
                        //   color: Colors.white,
                        // ),
                        labelText: 'Email or UserName',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(30)),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        )),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                //password textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    controller: passwordController,
                    decoration: InputDecoration(
                        //   hintText: 'Enter your Email or UserName',
                        //   hintStyle: TextStyle(
                        //   color: Colors.white,
                        // ),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(30)),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        )),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                //login button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Login'.toUpperCase(),
                            style: TextStyle(fontSize: 20),
                          ))),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
