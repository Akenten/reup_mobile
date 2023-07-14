import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class product extends StatefulWidget {
  final productData data;
  const product({super.key, required this.data});

  @override
  State<product> createState() => _productState();
}

class productData {
  final Image img;
  final String brand;
  final String name;
  final String price;

  productData(this.img, this.brand, this.name, this.price);
}

class _productState extends State<product> {
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
                onPressed: null,
                icon: SvgPicture.asset('assets/icons/reup_icon_favorite.svg'),
                iconSize: 16,
              )),
          //бренд
          Positioned(
            top: 218,
            left: 0,
            child: Text(
              widget.data.brand,
              style: const TextStyle(
                color: Color(0xFF333333),
                fontSize: 14,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w300,
                //height: 15.40,
                letterSpacing: 0.98,
              ),
            ),
          ),
          //название товара
          Positioned(
            top: 238,
            left: 0,
            child: Text(
              widget.data.name,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w500,
                //height: 15.40,
                letterSpacing: 0.98,
              ),
            ),
          ),
          // кнопка в корзину
          Positioned(
            left: 0,
            bottom: 0,
            child: OutlinedButton(
              onPressed: null,
              style: OutlinedButton.styleFrom(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                      side: BorderSide(color: Colors.black, width: 1.0))),
              child: const Text(
                'в корзину',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w500,
                  //height: 15.40,
                  letterSpacing: 0.98,
                ),
              ),
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
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w700,
                    //height: 15.40,
                    letterSpacing: 0.98,
                  ),
                )),
              ))
        ],
      ),
    );
  }
}
