import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({
    super.key,
    this.onTap,
    required this.isChecked,
    required this.buttonText,
  });
  final void Function()? onTap;
  final String buttonText;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          splashFactory: NoSplash.splashFactory,
          onTap: () => onTap?.call(),
          child: SizedBox(
            height: 32,
            width: 32,
            child: isChecked
                ? SvgPicture.asset('assets/icons/reup_activeradiobutton.svg')
                : SvgPicture.asset('assets/icons/reup_inactiveradiobutton.svg'),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Text(
          buttonText,
          style: const TextStyle(
            fontFamily: 'Gilroy',
            color: Color.fromRGBO(0, 0, 0, 1),
            fontSize: 16,
            fontWeight: FontWeight.w300,
            letterSpacing: 1.07,
          ),
        ),
      ],
    );
  }
}
