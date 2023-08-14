import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reup/common/styles.dart';
import 'main_page/main_page.dart';
import 'package:flutter/services.dart';
import 'cart/cart.dart';

class ReUpApp extends StatelessWidget {
  const ReUpApp({super.key});

  @override
  Widget build(BuildContext context) {
    //int currentPageIndex = 0;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          // appBar: const PreferredSize(
          //   preferredSize: Size.fromHeight(48),
          //   child: AppBar(),
          // ),
          body: Cart(),
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
            Text('REUP', style: CustomTextStyle.headerTextStyle),
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
