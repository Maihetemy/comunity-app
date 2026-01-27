// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              //username textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  style: TextStyle(
                    color: Color.fromARGB(255, 75, 6, 87),
                  ),
                  controller: usernameController,
                  decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 75, 6, 87),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromARGB(255, 75, 6, 87)),
                          borderRadius: BorderRadius.circular(30)),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 75, 6, 87),
                      )),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  controller: emailController,
                  decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 75, 6, 87),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromARGB(255, 75, 6, 87)),
                          borderRadius: BorderRadius.circular(30)),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color.fromARGB(255, 75, 6, 87),
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
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 75, 6, 87),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromARGB(255, 75, 6, 87)),
                          borderRadius: BorderRadius.circular(30)),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 75, 6, 87),
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
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                          gradient: const LinearGradient(
                              colors: [
                            Colors.purple,
                            Color.fromARGB(255, 72, 33, 243)
                          ],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft)),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent),
                          onPressed: () {},
                          child: Text(
                            'Login'.toUpperCase(),
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                    )),
              ),
              SizedBox(
                height: 16,
              ),
              //do you have an account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Don\'t have an account? ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 75, 6, 87),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color.fromARGB(255, 75, 6, 87),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              // accounts
              SizedBox(
                height: 24,
              ),
              Text(
                'Sign up with Social Networks',
                style: TextStyle(
                  color: Color.fromARGB(255, 75, 6, 87),
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[900]),
                      onPressed: () {},
                      child: Text(
                        'F',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                  SizedBox(
                    width: 16,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange[900]),
                      onPressed: () {},
                      child: Text(
                        'G+',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                  SizedBox(
                    width: 16,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      onPressed: () {},
                      child: Text(
                        'X',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
