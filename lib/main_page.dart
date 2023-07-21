import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'product.dart';
import 'carousel.dart';
import 'reup_choise.dart';

final controllerReupChoise = PageController(
  initialPage: 0,
);

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
        Row(
          children: [
            Expanded(
                flex: 1,
                child: OutlinedButton(
                    onPressed: (() {
                      log('more');
                    }),
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(right: 16),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
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
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
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
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 89),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
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
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(right: 32),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
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
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 40),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
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
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(right: 100, left: 8),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
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
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.center,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
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
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(right: 16),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
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
        // тут кончаются кнопки
        // product(
        //   data: productData(Image.asset('assets/images/reup_product.jpg'),
        //       'befree', 'Блузка женская Лейди', '7500'),
        // ),
        //InfiniteCarousel.builder(itemCount: 10, itemExtent: 175, itemBuilder: (BuildContext, ))
        const SizedBox(height: 48),
        SizedBox(
          width: 351,
          child: Text('подобрали для тебя',
              style: GoogleFonts.delaGothicOne(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.96,
              )),
        ),

        const SizedBox(height: 16),
        const SizedBox(height: 292, child: carousel()),
        //const SizedBox(height: 16),
        Align(
          alignment: Alignment.centerLeft,
          child: IconButton(
            onPressed: null,
            icon: SvgPicture.asset('assets/icons/reup_icon_more.svg'),
            iconSize: 64,
            style: ButtonStyle(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
          ),
        ),
        SizedBox(
            width: 351,
            child: Text('выбор REUP',
                style: GoogleFonts.delaGothicOne(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.96,
                ))),

        //карусель выбора reup
        Container(
          height: 500,
          child: PageView(controller: controllerReupChoise, children: [
            reupChoise(
                data: reupChoiseData(
                    'BEFREE',
                    'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей',
                    Image.asset('assets/images/reup_img3.jpg'))),
            reupChoise(
                data: reupChoiseData(
                    'BEFREE',
                    'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей',
                    Image.asset('assets/images/reup_img3.jpg'))),
            reupChoise(
                data: reupChoiseData(
                    'BEFREE',
                    'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей',
                    Image.asset('assets/images/reup_img3.jpg'))),
          ]),
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
