import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomTextFormField({super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(12),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.zero),
          borderSide: BorderSide(
            color: Color.fromRGBO(130, 130, 130, 1),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.zero),
          borderSide: BorderSide(
            color: Color.fromRGBO(130, 130, 130, 1),
          ),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontFamily: 'Gilroy',
          color: Color.fromARGB(255, 73, 70, 70),
          fontSize: 16,
          fontWeight: FontWeight.w300,
          letterSpacing: 1.07,
        ),
      ),
      style: const TextStyle(
        fontFamily: 'Gilroy',
        color: Color.fromRGBO(0, 0, 0, 1),
        fontSize: 16,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.07,
      ),
    );
  }
}
