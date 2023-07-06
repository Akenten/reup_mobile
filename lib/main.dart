import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

//import 'package:flutter/services.dart';

void main() {
  //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(const ReUpApp());
}

class ReUpApp extends StatelessWidget {
  const ReUpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: AppBar(),
        ),
        body: MainPage(),
      ),
    );
  }
}

final controller = PageController(
  initialPage: 0,
);

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SizedBox(
      //height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Container(
            height: 734, //678
            child: PageView(
              controller: controller,

              children: [
                Promo(
                    data: PromoData(
                        Image(image: AssetImage('assets/images/reup_img1.jpg')),
                        Image(image: AssetImage('assets/images/reup_img2.jpg')),
                        'новый бренд',
                        'Befree',
                        'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей ')),
                Promo(
                    data: PromoData(
                        Image(image: AssetImage('assets/images/reup_img1.jpg')),
                        Image(image: AssetImage('assets/images/reup_img2.jpg')),
                        '1',
                        '1',
                        '1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111 ')),
              ],

              //верстка дальше
            ),
          ),
          Text('data'),
        ],
      ),
    ));
  }
}

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
                    //eight: 35.20,
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
                      // Align(
                      //   alignment: Alignment.centerLeft,
                      //   child: IconButton(
                      //     onPressed: (() {
                      //       log('more');
                      //     }),
                      //     icon: SvgPicture.asset('assets/icons/Button.svg'),
                      //     iconSize: 40,
                      //   ),
                      // )
                    ]),
              ),
            ],
          ))
    ]);
  }
}

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 48,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('REUP',
                style: GoogleFonts.delaGothicOne(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  //height: 24,
                  letterSpacing: 0.96,
                )),
            IconButton(
                icon: const ImageIcon(AssetImage(
                    'assets/icons/reup_search.png')), //вставить реаповскую иконку
                iconSize: 32,
                onPressed: (() {
                  log('message');
                }))
          ],
        ));
  }
}
