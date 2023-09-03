import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reup/search_results_page/top_button.dart';

import '../features/common/product.dart';

class SearchResultsPage extends StatelessWidget {
  const SearchResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/reup_icon_back_arrow.svg'),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/reup_search.svg'),
            onPressed: () {},
          ),
        ],
        title: const Text(
          'результаты выдачи',
          style: TextStyle(
            fontFamily: 'Gilroy',
            color: Color.fromRGBO(0, 0, 0, 1),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'По запросу “блузка” найдено 145 товаров',
                style: GoogleFonts.delaGothicOne(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.04,
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TopButton(flag: false, text: 'сортировать'),
                TopButton(flag: true, text: 'фильтры'),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 8,
                    mainAxisExtent: 292,
                  ),
                  itemCount: 40,
                  itemBuilder: (BuildContext context, int index) {
                    return Product(data: ProductData(Image.asset('assets/images/reup_product.jpg'), 'Brand', 'Name', '$index price'),);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
