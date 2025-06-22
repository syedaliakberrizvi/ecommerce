import 'package:final_project/homebored.dart';
import 'package:final_project/signup.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),

            const Text(
              "Welcome Back",
              style: TextStyle(
                color: Colors.pink,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Login to continue",
              style: TextStyle(color: Colors.pink, fontSize: 13),
            ),
            const SizedBox(height: 20),

            // Email
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Email Address",
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Password",
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    controller: _passwordController,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(
                        Icons.lock_outline_rounded,
                        color: Colors.pink,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            if (_errorMessage.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  _errorMessage,
                  style: const TextStyle(color: Colors.red),
                ),
              ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                String? savedEmail = prefs.getString('email');
                String? savedPassword = prefs.getString('password');

                if (_emailController.text == savedEmail &&
                    _passwordController.text == savedPassword) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => Homebored(
                            navigatorKey: GlobalKey<NavigatorState>(),
                          ),
                    ),
                  );
                } else {
                  setState(() {
                    _errorMessage = 'Incorrect email or password';
                  });
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                minimumSize: const Size(270, 50),
              ),
              child: const Text(
                "Log In",
                style: TextStyle(color: Colors.white),
              ),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don’t have an account? ",
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  child: const Text("Sign up now"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
