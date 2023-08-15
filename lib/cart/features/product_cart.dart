import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:reup/common/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reup/cart/features/product_cart.dart';

class ProductCartData {
  final Image image;
  final String name;
  final String type;
  final String brand;
  final String color;
  final String size;
  final int price;
  final int lastPrice;
  ProductCartData(this.image, this.name, this.type, this.brand, this.color,
      this.size, this.price, this.lastPrice);
}

class ProductCart extends StatelessWidget {
  final ProductCartData data;
  const ProductCart({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 160,
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              child: data.image,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.name,
                    style: CustomTextStyle.reupCartName,
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.type,
                    style: CustomButtonTextStyle.buttonBoldStyle,
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.brand,
                    style: CustomTextStyle.promoTextStyle,
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.color,
                    style: CustomTextStyle.promoTextStyle,
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.size,
                    style: CustomTextStyle.promoTextStyle,
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text(
                        '${data.price} ₽',
                        style: CustomButtonTextStyle.buttonItemStyle,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        '${data.lastPrice} ₽',
                        style: CustomTextStyle.reupLastPrice,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // вместо трех точек - чекбокс
              children: [
                IconButton(
                  onPressed: null,
                  icon: SvgPicture.asset(
                      'assets/icons/reup_icon_more_buttons.svg'),
                  iconSize: 16,
                  style: IconButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
                // Spacer(
                //   flex: 2,
                // ),
                IconButton(
                  onPressed: null,
                  icon:
                      SvgPicture.asset('assets/icons/reup_icon_trash_can.svg'),
                  iconSize: 16,
                  style: IconButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                )
              ],
            ),
          ]),
          const SizedBox(
            height: 16,
          ),
          // линия
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
        ],
      ),
    );
  }
}
