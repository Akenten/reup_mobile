import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  CustomTextFormField({required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(12),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.zero),
          borderSide: BorderSide(
            color: Color.fromRGBO(130, 130, 130, 1),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.zero),
          borderSide: BorderSide(
            color: Color.fromRGBO(130, 130, 130, 1),
          ),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontFamily: 'Gilroy',
          color: Color.fromARGB(255, 73, 70, 70),
          fontSize: 16,
          fontWeight: FontWeight.w300,
          letterSpacing: 1.07,
        ),
      ),
      style: TextStyle(
        fontFamily: 'Gilroy',
        color: Color.fromRGBO(0, 0, 0, 1),
        fontSize: 16,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.07,
      ),
    );
  }
}
