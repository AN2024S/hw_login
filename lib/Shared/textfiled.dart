import 'package:flutter/material.dart';

class ANTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool obscureText;

  const ANTextField({
    super.key,
    required this.label,
    required this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.blueAccent),
        ),
        prefixIcon: Icon(Icons.person),
      ),
      obscureText: obscureText,
    );
  }
}