import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reup/features/common/styles.dart';
import 'package:reup/features/common/product.dart';
import 'package:reup/features/favorites/widgets/empty_favorites.dart';
import 'package:reup/features/favorites/widgets/filled_favorites.dart';
//import 'package:reup/features/favorites/widgets/prod.dart';

class Favorites extends StatelessWidget {
  List<ProductData> items = [
    ProductData(Image.asset('assets/images/reup_product.jpg'), 'befree',
        'Блузка женская Лейди', '7500₽'),
    ProductData(Image.asset('assets/images/reup_product.jpg'), 'befree',
        'Блузка женская Лейди', '7500₽'),
    ProductData(Image.asset('assets/images/reup_product.jpg'), 'befree',
        'Блузка женская Лейди', '7500₽'),
    ProductData(Image.asset('assets/images/reup_product.jpg'), 'befree',
        'Блузка женская Лейди', '7500₽'),
    ProductData(Image.asset('assets/images/reup_product.jpg'), 'befree',
        'Блузка женская Лейди', '7500₽'),
    ProductData(Image.asset('assets/images/reup_product.jpg'), 'befree',
        'Блузка женская Лейди', '7500₽')
  ];
  Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: const Center(
              child: Text(
                'избранное',
                style: CustomTextStyle.reupCartName,
                maxLines: 1,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          items.isEmpty
              ? const EmptyFavorites()
              : FilledFavorites(
                  items: items,
                ),
        ],
      ),
    );
  }
}
