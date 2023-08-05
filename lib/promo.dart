import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'styles.dart';

class PromoData {
  final Image img1;
  final Image img2;
  final String title;
  final String subtitle;
  final String text;

  PromoData(this.img1, this.img2, this.title, this.subtitle, this.text);
}

class Promo extends StatelessWidget {
  final PromoData data;
  const Promo({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      data.img1,
      data.img2,
      Container(
          //height: 284, //276 284
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(data.title,
                    style: CustomTextStyle.titlePromoTextStyle),
              ),
              const SizedBox(height: 20),
              Container(
                // линия
                width: double.infinity,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50,
                      //strokeAlign:
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                //height: 161,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data.subtitle,
                          style: CustomTextStyle.subtitlePromoTextStyle),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          data.text,
                          style: CustomTextStyle.promoTextStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Align(
                        //more button
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          onPressed: (() {
                            log('more');
                          }),
                          icon: SvgPicture.asset(
                              'assets/icons/reup_icon_more.svg'),
                          iconSize: 64,
                          style: const ButtonStyle(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                        ),
                      )
                    ]),
              ),
            ],
          ))
    ]);
  }
}
