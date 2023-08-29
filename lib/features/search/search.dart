import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reup/features/common/styles.dart';
import 'package:reup/features/search/widgets/popular_search.dart';
import 'package:reup/features/search/widgets/recent_search.dart';
import 'package:reup/features/search/widgets/recomendations.dart';
import 'package:reup/features/search/widgets/product_search.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.all(16),
              //padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.black))),
                    child: TextFormField(
                      autofocus: true,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: null,
                              icon: SvgPicture.asset(
                                'assets/icons/reup_search.svg',
                                width: 16,
                                height: 16,
                              )),
                          hintText: 'хочу найти...',
                          border: InputBorder.none,
                          hintStyle: CustomButtonTextStyle.buttonBoldStyle),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const RecentSearch(
                    searches: [
                      'рубашка белая',
                      'костюм серый',
                      'пижама женская'
                    ],
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: PopularSearch(searches: [
                      'рубашка белая',
                      'костюм серый',
                      'пижама женская'
                    ]),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Recomendations(searches: [
                      'какой-то бренд',
                      'какой-то бренд',
                      'какой-то бренд'
                    ]),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      ProuctSearch(
                        data: ProductSearchData(
                            Image.asset(
                                'assets/images/reup_product_search.jpg'),
                            'джинсы крутецкие',
                            'befree'),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      ProuctSearch(
                        data: ProductSearchData(
                            Image.asset(
                                'assets/images/reup_product_search.jpg'),
                            'джинсы крутецкие',
                            'befree'),
                      ),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
