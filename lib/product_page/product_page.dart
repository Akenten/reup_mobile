import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reup/product_page/custom_size_button.dart';

import 'product_characteristics.dart';
import 'product_description.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        actions: const [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/reup_img3.jpg'),
            // название товара, бренд, артикул, цена
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'блузка женская “Лэйди”',
                    style: GoogleFonts.delaGothicOne(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.04,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Befree',
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  const Text(
                    '03289',
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '3990',
                        style: TextStyle(
                          fontFamily: 'Gilroy',
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '1990',
                        style: GoogleFonts.delaGothicOne(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.04,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // размер, купить сейчас
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'выберите размер',
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 42,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        size_button(
                          size: '40-42',
                        ),
                        size_button(
                          size: '42-44',
                        ),
                        size_button(
                          size: '44-46',
                        ),
                        size_button(
                          size: '46-48',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: double.infinity,
                    height: 42,
                    decoration: CustomBoxDecoration.myBoxDecoration,
                    child: Center(
                      child: Text(
                        'купить сейчас',
                        style: TextStyle(
                          fontFamily: 'Gilroy',
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.07,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'характеристики',
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.07,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            const Divider(
              height: 1,
              color: Colors.black,
              indent: 16,
              endIndent: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ProductDescription(),
            ),
            const Divider(
              height: 1,
              color: Colors.black,
              indent: 16,
              endIndent: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ProductCharacteristics(),
            )
          ],
        ),
      ),
    );
  }
}
