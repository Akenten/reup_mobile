import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:reup/common/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reup/cart/features/product_cart.dart';
import 'package:reup/cart/features/summary.dart';

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

class FilledCart extends StatelessWidget {
  final List items;
  const FilledCart({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    numberOfProucts = items.length;
    productsNameState = _getProductsNameState(context);
    return Container(
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
                  List.generate(items.length, (index) {
            return ProductCart(data: items[index]);
          })),
          const SizedBox(
            height: 32,
          ),
          // итого
          Summary(),
        ],
      ),
    );
  }
}
