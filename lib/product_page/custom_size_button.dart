import 'package:flutter/material.dart';

class CustomBoxDecoration {
  static final BoxDecoration myBoxDecoration = BoxDecoration(
    border: Border.all(
      color: Colors.black,
      width: 1,
    ),
  );
}

class size_button extends StatelessWidget {
  final String size;
  const size_button({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CustomBoxDecoration.myBoxDecoration,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Text(
          size,
          style: TextStyle(
            fontFamily: 'Gilroy',
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.07,
          ),
        ),
      ),
    );
  }
}
