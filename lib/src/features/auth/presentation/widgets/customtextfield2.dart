import 'package:flutter/material.dart';

class custom_textField extends StatelessWidget {
  const custom_textField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
     decoration: InputDecoration(
        hintText: "Как к вам обращаться?",
        filled: true,
        fillColor: const Color(0xFFF9F9F9),
        
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Color(0xFFE0E0E0),
          ),
        ),
        
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}