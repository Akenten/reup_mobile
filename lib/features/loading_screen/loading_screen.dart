import 'package:flutter/material.dart';
import 'dart:async';

late Timer timer;
int currentScreen = 0;

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 100), (Timer timer) {
      if (currentScreen < 7) {
        currentScreen++;
        setState(() {});
        ;
      } else {
        currentScreen = 0;
        setState(() {});
      }

      // controller.animateToPage(currentPage,
      //     duration: const Duration(milliseconds: 350), curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  List<Image> screens = [
    Image.asset(
      'assets/images/load_screen1.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/load_screen2.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/load_screen3.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/load_screen4.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/load_screen5.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/load_screen6.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/load_screen7.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/load_screen8.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/load_screen9.jpg',
      fit: BoxFit.fill,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        timer.cancel();
        currentScreen = 8;
        setState(() {});
        // timer =
      }),
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: screens[currentScreen]),
    );
  }
}
