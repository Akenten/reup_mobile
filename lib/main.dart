import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  initialPage: 1,
);

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Stack(children: [
      Container(
        height: 702,
        child: PageView(
          controller: controller,
          children: const [
            Promo(),
            Promo(),
          ],

          //верстка дальше
        ),
      ),
    ]));
  }
}

class Promo extends StatelessWidget {
  const Promo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Image(image: AssetImage('assets/images/reup_img1.jpg')),
      const Image(image: AssetImage('assets/images/reup_img2.jpg')),
      Container(
          height: 276,
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
                  'новый бренд',
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
                      Text('Befree',
                          style: GoogleFonts.delaGothicOne(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.80,
                          )),
                      const SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей ',
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.98,
                          ),
                        ),
                      ),
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
                icon: const Icon(Icons.search), //вставить реаповскую иконку
                iconSize: 32,
                onPressed: (() {
                  log('message');
                }))
          ],
        ));
  }
}
