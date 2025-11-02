import 'package:flutter/material.dart';

class TextfiledWidget extends StatelessWidget {
  const TextfiledWidget({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.obscureText,
    required this.fillColor,
    required this.controller,
     this.validator,
  });
  final String hintText;
  final Widget prefixIcon;
  final bool obscureText;
  final Color fillColor;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: obscureText,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        fillColor: fillColor,
        filled: true,
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blueGrey, width: 1)),
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 1)),
      ),
    );
  }
}
