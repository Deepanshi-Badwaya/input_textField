library input_textfield;
// Importing the necessary package for Flutter Material UI
import 'package:flutter/material.dart';

// A reusable Flutter widget for a styled input text field
class InputTextField extends StatelessWidget {
  // Controller for the text field
  final TextEditingController controller;

  // Hint text for the text field
  final String hintText;

  // Flag to determine if the text should be obscured (e.g., for password input)
  final bool obscureText;

  // Constructor for the InputTextField class
  const InputTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  }) : super(key: key);

  // Build method to create the UI for the input text field
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        // Assigning the provided controller to the text field
        controller: controller,
        // Setting whether the text should be obscured or not
        obscureText: obscureText,
        decoration: InputDecoration(
          // Styling for the enabled border
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
          ),
          // Styling for the focused border
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade900),
            borderRadius: BorderRadius.circular(12),
          ),
          // Background color and hint text styling
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.shade500),
        ),
      ),
    );
  }
}
