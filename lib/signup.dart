import 'package:final_project/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _obscureText = true;
  bool _obscureText2 = true;
  String _passwordError = '';

  Future<void> saveUser(String email, String password, String name) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', email);
    await prefs.setString('password', password);
    await prefs.setString('name', name);
  }

  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            // Container(
            //   height: 200,
            //   width: 200,
            //   child: Image.asset('myimages/imagea.png'),
            // ),
            Text(
              "Create An Account",
              style: TextStyle(
                color: Colors.pink,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),

            // Name
            fieldWithLabel("Name", _nameController, Icons.person_2_outlined),
            SizedBox(height: 20),

            // Email
            fieldWithLabel(
              "Email Address",
              _emailController,
              Icons.email_outlined,
            ),
            SizedBox(height: 20),

            // Password
            passwordField("Password", _passwordController, true),
            SizedBox(height: 20),

            // Confirm Password
            passwordField(
              "Confirm Password",
              _confirmPasswordController,
              false,
            ),

            if (_passwordError.isNotEmpty)
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  _passwordError,
                  style: TextStyle(color: Colors.red, fontSize: 12),
                ),
              ),
            SizedBox(height: 30),

            // Sign Up Button
            ElevatedButton(
              onPressed: () {
                if (_passwordController.text !=
                    _confirmPasswordController.text) {
                  setState(() {
                    _passwordError = 'Passwords do not match';
                  });
                } else if (_passwordController.text.length < 6) {
                  setState(() {
                    _passwordError = 'Password must be at least 6 characters';
                  });
                } else {
                  setState(() {
                    _passwordError = '';
                  });

                  saveUser(
                    _emailController.text,
                    _passwordController.text,
                    _nameController.text,
                  );

                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text('Sign Up Successful')));

                  Future.delayed(Duration(milliseconds: 500), () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  });
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                minimumSize: Size(270, 50),
              ),
              child: Text("Sign Up", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  child: Text("Log in now"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
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

  Widget fieldWithLabel(
    String label,
    TextEditingController controller,
    IconData icon,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.pink,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(icon, color: Colors.pink),
            ),
          ),
        ],
      ),
    );
  }

  Widget passwordField(
    String label,
    TextEditingController controller,
    bool isMainPassword,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.pink,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          TextField(
            controller: controller,
            obscureText: isMainPassword ? _obscureText : _obscureText2,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock_outline_rounded, color: Colors.pink),
              suffixIcon: IconButton(
                icon: Icon(
                  (isMainPassword ? _obscureText : _obscureText2)
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    if (isMainPassword)
                      _obscureText = !_obscureText;
                    else
                      _obscureText2 = !_obscureText2;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
