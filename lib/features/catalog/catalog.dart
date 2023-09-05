import 'package:flutter/material.dart';
import 'package:reup/features/catalog/widgets/catalog_buttons_carousel.dart';
import 'package:reup/features/catalog/widgets/categories.dart';

class Catalog extends StatelessWidget {
  const Catalog({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      ButtonsCarousel(),
      CategoriesTile(),
    ]);
  }
}
