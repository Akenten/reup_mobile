import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'product.dart';
import 'carousel.dart';
import 'reup_choise.dart';
import 'collection.dart';

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
          height: 779, //774, //734, //678
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
                        maxLines: 1,
                        style: TextStyle(
                          fontFamily: 'Gilroy',
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.12,
                          overflow: TextOverflow.ellipsis,
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
                        maxLines: 1,
                        style: TextStyle(
                          fontFamily: 'Gilroy',
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.12,
                          overflow: TextOverflow.ellipsis,
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
                        maxLines: 1,
                        style: TextStyle(
                          fontFamily: 'Gilroy',
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.12,
                          overflow: TextOverflow.ellipsis,
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
                        maxLines: 1,
                        style: TextStyle(
                          fontFamily: 'Gilroy',
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.12,
                          overflow: TextOverflow.ellipsis,
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
                        maxLines: 1,
                        style: TextStyle(
                          fontFamily: 'Gilroy',
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.12,
                          overflow: TextOverflow.ellipsis,
                        )))),
            Expanded(
                flex: 1,
                child: OutlinedButton(
                    onPressed: (() {
                      log('more');
                    }),
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 20),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
                    child: const Text('костюмы',
                        maxLines: 1,
                        style: TextStyle(
                          fontFamily: 'Gilroy',
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.12,
                          overflow: TextOverflow.ellipsis,
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
                        maxLines: 1,
                        style: TextStyle(
                          fontFamily: 'Gilroy',
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.12,
                          overflow: TextOverflow.ellipsis,
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
                        maxLines: 1,
                        style: TextStyle(
                          fontFamily: 'Gilroy',
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.12,
                          overflow: TextOverflow.ellipsis,
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
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text('подобрали для тебя',
                style: GoogleFonts.delaGothicOne(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.96,
                )),
          ),
        ),

        const SizedBox(height: 16),
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(left: 8),
                child: SizedBox(height: 292, child: carousel()))),
        //const SizedBox(height: 16),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 16),
            child: IconButton(
              onPressed: null,
              icon: SvgPicture.asset('assets/icons/reup_icon_more.svg'),
              iconSize: 64,
              style: ButtonStyle(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text('выбор REUP',
                style: GoogleFonts.delaGothicOne(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.96,
                )),
          ),
        ),

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
        ),

        Container(
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 188, 218, 99),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 48),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  'Коллекции',
                  style: GoogleFonts.delaGothicOne(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.96,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      collection(
                        data: collectionData('Название коллекции', 'бренд',
                            Image.asset('assets/images/reup_collection.jpg')),
                      ),
                      collection(
                        data: collectionData('Название коллекции', 'бренд',
                            Image.asset('assets/images/reup_collection.jpg')),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      collection(
                        data: collectionData('Название коллекции', 'бренд',
                            Image.asset('assets/images/reup_collection.jpg')),
                      ),
                      collection(
                        data: collectionData('Название коллекции', 'бренд',
                            Image.asset('assets/images/reup_collection.jpg')),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Text(
                        'мне нравится',
                        textAlign: TextAlign.right,
                        style: GoogleFonts.delaGothicOne(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.96,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: SizedBox(height: 292, child: carousel()))),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: null,
                      icon: SvgPicture.asset('assets/icons/reup_icon_more.svg'),
                      iconSize: 64,
                      style: const ButtonStyle(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        //анимашка
        //upcycleWidget()
        const SizedBox(
          height: 48,
        ),
        const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(left: 8),
                child: SizedBox(height: 292, child: carousel()))),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: IconButton(
              onPressed: null,
              icon: SvgPicture.asset('assets/icons/reup_icon_more.svg'),
              iconSize: 64,
              style: const ButtonStyle(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
          ),
        ),
        // Row(
        //   children: [
        //     Image.asset('assets/images/reup_ad1.jpg'),
        //     IconButton(
        //       onPressed: null,
        //       icon: SvgPicture.asset('assets/images/reup_ad1.1.svg'),
        //       iconSize: 150,
        //     ),
        //   ],
        // )
        Row(
          children: [
            // Text(
            //   'REUP',
            //   style: GoogleFonts.delaGothicOne(
            //     color: Colors.black,
            //     fontSize: 24,
            //     fontWeight: FontWeight.w400,
            //     letterSpacing: 0.96,
            //   ),
            // ),
            //const Expanded(child: SizedBox()),
            IconButton(
              onPressed: null,
              icon: SvgPicture.asset('assets/icons/reup_icon_vk.svg'),
              //iconSize: 40,
            ),
            IconButton(
              onPressed: null,
              icon: SvgPicture.asset('assets/icons/reup_icon_inst.svg'),
              //iconSize: 40,
            ),
            IconButton(
              onPressed: null,
              icon: SvgPicture.asset('assets/icons/reup_icon_fb.svg'),
              //iconSize: 40,
            ),
            IconButton(
              onPressed: null,
              icon: SvgPicture.asset('assets/icons/reup_icon_tg.svg'),
              //iconSize: 40,
            ),
          ],
        ),
        const Column(
          textDirection: TextDirection.ltr,
          children: [
            TextButton(
                onPressed: null,
                child: Text(
                  'Написать в поддержку',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w300,
                    //height: 17.60,
                    letterSpacing: 1.12,
                  ),
                )),
            TextButton(
                onPressed: null,
                child: Text(
                  'FAQ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w300,
                    //height: 17.60,
                    letterSpacing: 1.12,
                  ),
                )),
            TextButton(
                onPressed: null,
                child: Text(
                  'Написать в поддержку',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w300,
                    //height: 17.60,
                    letterSpacing: 1.12,
                  ),
                )),
          ],
        )
      ],
    ));
  }
}

class upcycleWidget extends StatelessWidget {
  const upcycleWidget({
    super.key,
  });

  // void initState() {
  //   initState();
  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     // автоматическая прокрутка до конца списка
  //     sc.animateTo(99999, duration: Duration(hours: 2), curve: Curves.easeOut);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return SvgPicture.asset('assets/icons/upcycle.svg');
        },
        itemCount: 99999999,

        controller: sc,
        //sc.animateTo(99999, duration:Duration(hours: 2), curve:Curves.easeOut),
        //sc.animateTo(0.0, duration: Duration(hours: 2), curve:Curves.easeOut),
      ),
    );
  }
}

final sc = ScrollController();
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
                        height: 16,
                      ),
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
