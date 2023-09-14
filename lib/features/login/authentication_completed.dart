import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:reup/features/common/outlined_button.dart';
import 'package:reup/features/common/styles.dart';
import 'package:reup/features/Profile/profile.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:developer';

class AuthenticationCompleted extends StatelessWidget {
  final bool firstTimeAuth;
  const AuthenticationCompleted({super.key, required this.firstTimeAuth});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            Row(
              children: [
                const Spacer(),
                IconButton(
                    onPressed: (() {
                      // куда?
                    }),
                    icon: SvgPicture.asset('assets/icons/reup_icon_cross.svg'))
              ],
            ),
            Text(
              firstTimeAuth
                  ? 'регистрация успешно завершена!'
                  : 'вы успешно вошли!',
              style: CustomTextStyle.headerTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            firstTimeAuth
                ? RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: 'добавьте информацию о себе в ',
                        style: CustomButtonTextStyle.basicStyle,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'личном кабинете',
                            style: CustomButtonTextStyle.buttonItemStyle,
                            recognizer: TapGestureRecognizer()
                              ..onTap = (() {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Profile()));
                              }),
                          ),
                        ]),
                  )
                : ReupOutlinedButton(
                    ontap: (() {
                      log('buy');
                    }),
                    text: 'к покупкам',
                  )
            //  OutlinedButton(
            // onPressed: (() {
            //   log('buy');
            // }),
            //     style: OutlinedButton.styleFrom(
            //         minimumSize:
            //             Size(MediaQuery.of(context).size.width, 42),
            //         tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            //         side: const BorderSide(color: Colors.black, width: 1),
            //         shape: const RoundedRectangleBorder(
            //           borderRadius: BorderRadius.zero,
            //         )),
            //     child: const Text(
            //       'к покупкам',
            //       style: CustomButtonTextStyle.buttonBoldStyle,
            //     ),
            //   )
          ],
        ),
      ),
    );
  }
}
