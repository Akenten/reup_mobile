import 'package:flutter/material.dart';
//import 'package:flutter/foundation.dart';
//import 'package:flutter/gestures.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'product.dart';

class carousel extends StatefulWidget {
  const carousel({super.key});

  @override
  State<carousel> createState() => _carouselState();
}

class _carouselState extends State<carousel> {
  // Wheater to loop through elements
  bool _loop = false;

  // Scroll controller for carousel
  late InfiniteScrollController _controller;

  // Maintain current index of carousel
  int _selectedIndex = 0;

  // Width of each item
  double _itemExtent = 191; //175

  // Get screen width of viewport.
  double get screenWidth => MediaQuery.of(context).size.width;

  @override
  void initState() {
    super.initState();
    _controller = InfiniteScrollController(initialItem: _selectedIndex);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 292,
      child: InfiniteCarousel.builder(
          itemCount: 20,
          itemExtent: _itemExtent,
          loop: _loop,
          controller: _controller,
          center: false,
          onIndexChanged: (index) {
            if (_selectedIndex != index) {
              setState(() {
                _selectedIndex = index;
              });
            }
          },
          itemBuilder: (context, itemIndex, realIndex) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GestureDetector(
                  onTap: () {
                    _controller.animateToItem(realIndex);
                  },
                  child: product(
                      data: productData(
                          Image.asset('assets/images/reup_product.jpg'),
                          'befree',
                          'Блузка женская Лейди',
                          '7500')),
                ));
          }),
    );
  }
}
