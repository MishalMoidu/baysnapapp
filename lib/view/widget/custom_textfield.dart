import 'package:flutter/material.dart';
import '../../utilities/responsive.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    required this.icontype,
  });

  final String hint;
  final Icon icontype;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
          fontSize: Responsive.w(18, context),
          color: const Color.fromARGB(255, 255, 255, 255),
          fontFamily: "Mont"),
      decoration: InputDecoration(
        prefixIcon: icontype,
        prefixIconColor: Colors.white,
        hintText: hint,
        labelStyle: TextStyle(
            fontSize: Responsive.w(18, context),
            color: const Color.fromARGB(255, 255, 255, 255),
            fontFamily: "Mont"),
        hintStyle: TextStyle(
            fontSize: Responsive.w(18, context),
            color: const Color.fromARGB(255, 255, 255, 255),
            fontFamily: "Mont"),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
    );
  }
}
