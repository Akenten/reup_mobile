import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reup/features/common/styles.dart';
import 'features/main_page/main_page.dart';
import 'package:flutter/services.dart';
import 'features/cart/cart.dart';
import 'features/catalog/catalog.dart';
import 'features/catalog/widgets/topBar.dart';
import 'features/search/search.dart';
import 'package:reup/features/main_page/widgets/top_bar.dart';
import 'package:reup/features/favorites/favorites.dart';
import 'package:reup/features/Profile/profile.dart';

class ReUpApp extends StatefulWidget {
  const ReUpApp({super.key});

  @override
  State<ReUpApp> createState() => _ReUpAppState();
}

int currentPageIndex = 0;

class _ReUpAppState extends State<ReUpApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: currentPageIndex == 0
              ? const PreferredSize(
                  preferredSize: Size.fromHeight(48),
                  child: MainAppBar(),
                )
              : currentPageIndex == 1
                  ? const PreferredSize(
                      preferredSize: Size.fromHeight(48),
                      child: TopBarCatalog(),
                    )
                  : null,
          body: <Widget>[
            MainPage(),
            Catalog(),
            Cart(),
            Favorites(),
            Profile(),
          ][currentPageIndex],
          backgroundColor: Colors.white,
          bottomNavigationBar: SizedBox(
            height: 56,
            child: NavigationBar(
                onDestinationSelected: (int index) {
                  setState(() {
                    currentPageIndex = index;
                  });
                },
                selectedIndex: currentPageIndex,
                backgroundColor: Colors.white,
                destinations: [
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
                      icon: SvgPicture.asset(
                          'assets/icons/reup_icon_favorite.svg'),
                      label: ''),
                  NavigationDestination(
                      icon: SvgPicture.asset(
                          'assets/icons/reup_icon_profile.svg'),
                      label: ''),
                ]),
          )),
    );
  }
}
