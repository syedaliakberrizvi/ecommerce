import 'package:final_project/splash3.dart';
import 'package:flutter/material.dart';

class Splashb extends StatefulWidget {
  @override
  State<Splashb> createState() => _SplashbState();
}

class _SplashbState extends State<Splashb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "projectimages/splash2.png", // <-- Path must be valid
                  width: 250,
                  height: 250,
                ),
                const SizedBox(height: 20),
                const Text(
                  "Choose Products",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Splashc()),
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              child: Text("Next", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
