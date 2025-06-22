import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String placeholder;
  final TextEditingController controller;
  final String? errorText;

  const CustomTextField({
    super.key,
    required this.label,
    required this.placeholder,
    required this.controller,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.w500)),
        SizedBox(height: 8),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: placeholder,
            border: OutlineInputBorder(),
            errorText: errorText,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: errorText != null ? Colors.red : Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
