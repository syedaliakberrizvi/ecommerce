import 'package:final_project/widgets/textfield.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            CustomTextField(
              label: "Email Address",
              placeholder: 'Enter email here',
            ),
          ],
        ),
      ),
    );
  }
}
