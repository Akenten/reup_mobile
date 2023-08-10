import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reup/common/styles.dart';
import 'dart:developer';

class Product extends StatefulWidget {
  final ProductData data;
  const Product({super.key, required this.data});

  @override
  State<Product> createState() => _ProductState();
}

class ProductData {
  final Image img;
  final String brand;
  final String name;
  final String price;

  ProductData(this.img, this.brand, this.name, this.price);
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 292,
      child: Stack(
        children: [
          // изображение товара

          Container(
              child: widget
                  .data.img), //Image.asset('assets/images/reup_product.jpg')),
          Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: (() {
                  log('fav');
                }),
                icon: SvgPicture.asset('assets/icons/reup_icon_favorite.svg'),
                iconSize: 16,
                style: IconButton.styleFrom(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              )),
          //бренд
          Positioned(
            top: 218,
            left: 0,
            child: Text(
              widget.data.brand,
              style: CustomTextStyle.brandTextStyle,
            ),
          ),
          //название товара
          Positioned(
            top: 238,
            left: 0,
            child: Text(
              widget.data.name,
              style: CustomTextStyle.productTextStyle,
            ),
          ),
          // кнопка в корзину
          Positioned(
            left: 0,
            bottom: 0,
            child: OutlinedButton(
              onPressed: null,
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                      side: BorderSide(color: Colors.black, width: 1.0))),
              child: const Text('в корзину',
                  style: CustomButtonTextStyle.buttonBoldStyle),
            ),
          ),
          // линия
          Positioned(
            bottom: 36,
            left: 0,
            child: Container(
              width: 175,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.50,
                    //strokeAlign:
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 73,
                height: 36,
                child: Center(
                    child: Text(
                  widget.data.price,
                  style: CustomTextStyle.boldTextStyle,
                )),
              ))
        ],
      ),
    );
  }
}
