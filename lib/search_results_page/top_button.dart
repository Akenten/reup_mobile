import 'package:flutter/material.dart';

class TopButton extends StatelessWidget {
  const TopButton({
    super.key,
    required this.flag,
    required this.text,
    this.onTap,
  });
  final bool flag;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: () => onTap?.call(),
        child: Container(
          height: 44,
          decoration: flag
              ? const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                        color: Color.fromRGBO(79, 79, 79, 1), width: 1),
                    bottom: BorderSide(
                        color: Color.fromRGBO(79, 79, 79, 1), width: 1),
                    left: BorderSide(
                        color: Color.fromRGBO(79, 79, 79, 1), width: 0.5),
                  ),
                )
              : const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                        color: Color.fromRGBO(79, 79, 79, 1), width: 1),
                    bottom: BorderSide(
                        color: Color.fromRGBO(79, 79, 79, 1), width: 1),
                    right: BorderSide(
                        color: Color.fromRGBO(79, 79, 79, 1), width: 0.5),
                  ),
                ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontFamily: 'Gilroy',
                color: Color.fromRGBO(0, 0, 0, 1),
                fontSize: 16,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.07,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
