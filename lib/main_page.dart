import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Container(
          height: 734, //678
          child: PageView(
            controller: controller,

            children: [
              Promo(
                  data: PromoData(
                      const Image(
                          image: AssetImage('assets/images/reup_img1.jpg')),
                      const Image(
                          image: AssetImage('assets/images/reup_img2.jpg')),
                      'новый бренд',
                      'Befree',
                      'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей ')),
              Promo(
                  data: PromoData(
                      const Image(
                          image: AssetImage('assets/images/reup_img1.jpg')),
                      const Image(
                          image: AssetImage('assets/images/reup_img2.jpg')),
                      '1',
                      '1',
                      '1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111 ')),
            ],

            //верстка дальше
          ),
        ),
        Column(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: OutlinedButton(
                        onPressed: (() {
                          log('more');
                        }),
                        style: ButtonStyle(
                            alignment: Alignment.centerRight,
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                                    EdgeInsets.only(right: 16)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                    side: BorderSide(
                                        color: Colors.black, width: 1)))),
                        child: const Text('верхняя одежда',
                            style: TextStyle(
                              fontFamily: 'Gilroy',
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.12,
                            )))),
                Expanded(
                    flex: 1,
                    child: OutlinedButton(
                        onPressed: (() {
                          log('more');
                        }),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                    side: BorderSide(
                                        color: Colors.black, width: 1)))),
                        child: const Text('обувь',
                            style: TextStyle(
                              fontFamily: 'Gilroy',
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.12,
                            ))))
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: OutlinedButton(
                        onPressed: (() {
                          log('more');
                        }),
                        style: ButtonStyle(
                            alignment: Alignment.centerLeft,
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                                    EdgeInsets.only(left: 89)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                    side: BorderSide(
                                        color: Colors.black, width: 1)))),
                        child: const Text('сумки',
                            style: TextStyle(
                              fontFamily: 'Gilroy',
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.12,
                            )))),
                Expanded(
                    flex: 1,
                    child: OutlinedButton(
                        onPressed: (() {
                          log('more');
                        }),
                        style: ButtonStyle(
                            alignment: Alignment.centerRight,
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                                    EdgeInsets.only(right: 32)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                    side: BorderSide(
                                        color: Colors.black, width: 1)))),
                        child: const Text('рубашки',
                            style: TextStyle(
                              fontFamily: 'Gilroy',
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.12,
                            ))))
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: OutlinedButton(
                        onPressed: (() {
                          log('more');
                        }),
                        style: ButtonStyle(
                            alignment: Alignment.centerLeft,
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                                    EdgeInsets.only(left: 40)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                    side: BorderSide(
                                        color: Colors.black, width: 1)))),
                        child: const Text('платья',
                            style: TextStyle(
                              fontFamily: 'Gilroy',
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.12,
                            )))),
                Expanded(
                    flex: 1,
                    child: OutlinedButton(
                        onPressed: (() {
                          log('more');
                        }),
                        style: ButtonStyle(
                            alignment: Alignment.centerRight,
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                                    EdgeInsets.only(right: 100)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                    side: BorderSide(
                                        color: Colors.black, width: 1)))),
                        child: const Text('костюмы',
                            style: TextStyle(
                              fontFamily: 'Gilroy',
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.12,
                            ))))
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: OutlinedButton(
                        onPressed: (() {
                          log('more');
                        }),
                        style: ButtonStyle(
                            alignment: Alignment.center,
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                    side: BorderSide(
                                        color: Colors.black, width: 1)))),
                        child: const Text('штаны',
                            style: TextStyle(
                              fontFamily: 'Gilroy',
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.12,
                            )))),
                Expanded(
                    flex: 1,
                    child: OutlinedButton(
                        onPressed: (() {
                          log('more');
                        }),
                        style: ButtonStyle(
                            alignment: Alignment.centerRight,
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                                    EdgeInsets.only(right: 16)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                    side: BorderSide(
                                        color: Colors.black, width: 1)))),
                        child: const Text('аксессуары',
                            style: TextStyle(
                              fontFamily: 'Gilroy',
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.12,
                            ))))
              ],
            ),
          ],
        )
      ],
    ));
  }
}

final controller = PageController(
  initialPage: 0,
);

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
                child: Text(
                  data.title,
                  style: GoogleFonts.delaGothicOne(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    //height: 35.20,
                    letterSpacing: 1.28,
                  ),
                ),
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
                          style: GoogleFonts.delaGothicOne(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.80,
                          )),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          data.text,
                          style: const TextStyle(
                            fontFamily: 'Gilroy',
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.98,
                          ),
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
                          iconSize: 36,
                        ),
                      )
                    ]),
              ),
            ],
          ))
    ]);
  }
}
