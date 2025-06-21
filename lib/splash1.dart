import 'dart:async';

import 'package:final_project/splash2.dart';
import 'package:flutter/material.dart';

class SplashA extends StatefulWidget {
  const SplashA({super.key});

  @override
  State<SplashA> createState() => _SplashAState();
}

class _SplashAState extends State<SplashA> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Splashb()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('projectimages/Union.png', width: 200, height: 200),
      ),
    );
  }
}
