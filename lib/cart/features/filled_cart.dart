import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:reup/common/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reup/cart/features/product_cart.dart';
import 'package:reup/cart/features/summary.dart';
import 'package:reup/cart/features/floating_bar.dart';
import 'package:visibility_detector/visibility_detector.dart';

int numberOfProucts = 0;
String productsNameState = '';

String _getProductsNameState(BuildContext context) {
  int numberState =
      numberOfProucts % 10; // остаток от деления на 10 количества товаров
  if (numberState == 1) {
    productsNameState = 'товар';
    return productsNameState;
  } else if (numberState > 1 && numberState < 5) {
    productsNameState = 'товара';
    return productsNameState;
  } else {
    productsNameState = 'товаров';
    return productsNameState;
  }
}

class FilledCart extends StatefulWidget {
  final List<ProductCartData> items;

  const FilledCart({super.key, required this.items});

  @override
  State<FilledCart> createState() => _FilledCartState();
}

class _FilledCartState extends State<FilledCart> {
  bool _showFloatingBar = true;

  @override
  Widget build(BuildContext context) {
    numberOfProucts = widget.items.length;
    productsNameState = _getProductsNameState(context);

    return Stack(alignment: Alignment.bottomCenter, children: [
      ListView(children: [
        Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$numberOfProucts $productsNameState',
                    style: CustomTextStyle.headerTextStyle,
                    maxLines: 1,
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: null,
                      child: const Text(
                        'выбрать все',
                        style: CustomButtonTextStyle.basicStyle,
                      )),
                ],
              ),

              //тут генерируются товары полученные из cart
              Column(
                children:
                    //[
                    List.generate(widget.items.length, (index) {
                  return ProductCart(
                    data: widget.items[index],
                    onTap: () {
                      log(index.toString());
                    },
                    // onDelete: () {
                    //   items.remove(items[index]);
                    // },
                  );
                }),
              ),
              const SizedBox(
                height: 32,
              ),
              // Align(
              //   alignment: FractionalOffset.bottomCenter,
              //   child: FloatingBar(),
              // ),
              // итого
              // Summary(
              //   data: items,
              // ),
              VisibilityDetector(
                  key: const Key('key'),
                  onVisibilityChanged: (info) {
                    if (info.visibleFraction > 0 && _showFloatingBar) {
                      log('hide');
                      setState(() => _showFloatingBar = false);
                    } else if (info.visibleFraction <= 0 && !_showFloatingBar) {
                      log('show');
                      setState(() => _showFloatingBar = true);
                    }
                  },
                  child: Summary(data: widget.items)),
            ],
          ),
        ),
      ]),
      // if (_showFloatingBar) FloatingBar(),
      if (_showFloatingBar) FloatingBar(),
    ]);
  }
}
