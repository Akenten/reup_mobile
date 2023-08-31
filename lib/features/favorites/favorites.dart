import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reup/features/common/styles.dart';
//import 'package:reup/features/common/product.dart';
import 'package:reup/features/favorites/widgets/empty_favorites.dart';
import 'package:reup/features/favorites/widgets/filled_favorites.dart';
import 'package:reup/features/favorites/widgets/prod.dart';

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
    // ProductData(Image.asset('assets/images/reup_product.jpg'), 'befree',
    //     'Блузка женская Лейди', '7500₽')
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
          // Padding(
          //   padding: EdgeInsets.only(left: 16, right: 16),
          //   child: Row(
          //     children: [
          //       SizedBox(
          //         width: MediaQuery.of(context).size.width / 2 - 24,
          //         child: Prod(
          //           data: ProductData(
          //               Image.asset('assets/images/reup_product.jpg'),
          //               'befree',
          //               'Блузка женская Лейди',
          //               '7500₽'),
          //         ),
          //       ),
          //       const SizedBox(
          //         width: 16,
          //       ),
          //       SizedBox(
          //         width: MediaQuery.of(context).size.width / 2 - 24,
          //         child: Prod(
          //           data: ProductData(
          //               Image.asset('assets/images/reup_product.jpg'),
          //               'befree',
          //               'Блузка женская Лейди',
          //               '7500₽'),
          //         ),
          //       ),
          //       // Prod(
          //       //   data: ProductData(
          //       //       Image.asset('assets/images/reup_product.jpg'),
          //       //       'befree',
          //       //       'Блузка женская Лейди',
          //       //       '7500₽'),
          //       // ),
          //     ],
          //   ),
          // ),
          items.isEmpty
              ? const EmptyFavorites()
              : FilledFavorites(
                  items: items,
                ),
          // GridView.count(
          //     scrollDirection: Axis.vertical,
          //     padding: const EdgeInsets.all(16),
          //     crossAxisCount: 2,
          //     primary: false,
          //     shrinkWrap: true,
          //     childAspectRatio: 0.6, // (183 / 292),
          //     crossAxisSpacing: 8,
          //     mainAxisSpacing: 16,
          //     children: List.generate(
          //       items.length,
          //       (index) {
          //         return Prod(data: items[index]);
          //       },
          //     )),
        ],
      ),
    );
  }
}
