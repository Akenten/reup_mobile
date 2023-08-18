import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:reup/cart/features/filled_cart.dart';
import 'package:reup/common/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reup/cart/features/cart_bar.dart';
import 'package:reup/cart/features/empty_cart.dart';
import 'package:reup/main_page/features/carousel.dart';
import 'package:reup/cart/features/product_cart.dart';

// как закрепить виджет оформления заказа внизу экрана + сделать так чтобы он пропадал когда появляется виджет суммы
// как реализовать удаление товара из корзины + анимация

class Cart extends StatelessWidget {
  // сюда должны попадать данные из бека
  List<ProductCartData> items = [
    ProductCartData(
        Image.asset('assets/images/reup_cart_product.jpg'),
        'топ Trendyol',
        'топ',
        'Befree',
        'цвет: черный',
        'размер: 46',
        10000,
        15000),
    ProductCartData(
        Image.asset('assets/images/reup_cart_product.jpg'),
        'топ Trendyol',
        'топ',
        'Befree',
        'цвет: черный',
        'размер: 46',
        10000,
        15000),
    ProductCartData(
        Image.asset('assets/images/reup_cart_product.jpg'),
        'топ Trendyol',
        'топ',
        'Befree',
        'цвет: черный',
        'размер: 46',
        10000,
        15000),
    ProductCartData(
        Image.asset('assets/images/reup_cart_product.jpg'),
        'топ Trendyol',
        'топ',
        'Befree',
        'цвет: черный',
        'размер: 46',
        10000,
        15000),
    ProductCartData(
        Image.asset('assets/images/reup_cart_product.jpg'),
        'топ Trendyol',
        'топ',
        'Befree',
        'цвет: черный',
        'размер: 46',
        10000,
        15000),
  ];
  Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //CartBar(),
          items.isNotEmpty
              ? FilledCart(
                  items: items,
                )
              : const EmptyCart(),
          const SizedBox(
            height: 48,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'подобрали для тебя',
                style: CustomTextStyle.headerTextStyle,
                maxLines: 1,
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
                  child: SizedBox(height: 292, child: Carousel()))),
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
          const SizedBox(
            height: 24,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'избранное',
                style: CustomTextStyle.headerTextStyle,
                maxLines: 1,
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
                  child: SizedBox(height: 292, child: Carousel()))),
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
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                textDirection: TextDirection.ltr,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: null,
                      child: const Text(
                        'Написать в поддержку',
                        style: CustomButtonTextStyle.basicStyle,
                      )),
                  const SizedBox(
                    height: 6,
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: null,
                      child: const Text('FAQ',
                          style: CustomButtonTextStyle.basicStyle)),
                  const SizedBox(
                    height: 6,
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: null,
                      child: const Text('Публичная оферта',
                          style: CustomButtonTextStyle.basicStyle)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: OutlinedButton(
                    onPressed: null,
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side: const BorderSide(color: Colors.black, width: 1),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        )),
                    child: const Text('Стать продавцом',
                        style: CustomButtonTextStyle.buttonBoldStyle)),
              ),
            ),
          ])
        ],
      ),
    );
  }
}
