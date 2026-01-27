import 'dart:async';

import 'package:firbase_test/screens/login_screen.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  // initState
  void initState() {
    super.initState();
    // timer two seconds
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => Login()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // rgb(161, 88, 202)
      backgroundColor: const Color.fromARGB(255, 161, 88, 202),
      body: Center(
        child: Image.asset(
          'assets/images/png-clipart-twitch-social-media-computer-icons-youtube-video-game-social-media-purple-violet-removebg-preview.png',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
