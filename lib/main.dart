import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reup/order_registration_page/order_registration_page.dart';
import 'package:reup/order_succeed_page/order_succeed_page.dart';
import 'main_page.dart';

void main() {
  //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(const ReUpApp());
}

class ReUpApp extends StatelessWidget {
  const ReUpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          // appBar: const PreferredSize(
          //   preferredSize: Size.fromHeight(48),
          //   child: AppBar(),
          // ),
          body: OrderRegistrationPage(),
          backgroundColor: Colors.white,
          bottomNavigationBar: SizedBox(
            height: 56,
            child: NavigationBar(backgroundColor: Colors.white, destinations: [
              NavigationDestination(
                  icon: SvgPicture.asset('assets/icons/reup_icon.svg'),
                  label: ''),
              NavigationDestination(
                  icon: SvgPicture.asset('assets/icons/reup_icon_list.svg'),
                  label: ''),
              NavigationDestination(
                  icon: SvgPicture.asset('assets/icons/reup_icon_cart.svg'),
                  label: ''),
              NavigationDestination(
                  icon: SvgPicture.asset('assets/icons/reup_icon_favorite.svg'),
                  label: ''),
              NavigationDestination(
                  icon: SvgPicture.asset('assets/icons/reup_icon_profile.svg'),
                  label: ''),
            ]),
          )),
    );
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
                icon:
                    const ImageIcon(AssetImage('assets/icons/reup_search.png')),
                iconSize: 32,
                onPressed: (() {
                  log('message');
                }))
          ],
        ));
  }
}
