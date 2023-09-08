import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:flutter_svg/flutter_svg.dart';

class AdSection extends StatelessWidget {
  const AdSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (() {
            log('ad1');
          }),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 150,
                    child: Image.asset(
                      'assets/images/reup_ad1.jpg',
                      fit: BoxFit.fill,
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 150,
                    child: SvgPicture.asset(
                      'assets/images/reup_ad1.1.svg',
                      fit: BoxFit.fill,
                    ),
                  ))
            ],
          ),
        ),
        GestureDetector(
          onTap: (() {
            log('ad2');
          }),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  height: 100,
                  child: SvgPicture.asset(
                    'assets/images/reup_ad2.svg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 100,
                    child: Image.asset(
                      'assets/images/reup_ad2.1.jpg',
                      fit: BoxFit.fill,
                    ),
                  ))
            ],
          ),
        ),
        GestureDetector(
          onTap: (() {
            log('ad3');
          }),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/reup_ad3.jpg',
                  fit: BoxFit.fill,
                ),
                SvgPicture.asset(
                  'assets/images/reup_ad3.1.svg',
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
