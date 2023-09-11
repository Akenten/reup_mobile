import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../common/carousel.dart';
import 'widgets/reup_choise.dart';
import 'widgets/collection.dart';
import '../common/styles.dart';
import 'widgets/promo.dart';
import 'widgets/category_buttons.dart';
import 'widgets/collections_section.dart';
import 'widgets/ad_section.dart';
import 'widgets/upcycle.dart';
import 'widgets/footer.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        //промо
        Promo(),

        // ряды кнопок с категориями товаров

        CategoryButtons(),

        // тут кончаются кнопки

        const SizedBox(height: 48),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text('подобрали для тебя',
                style: CustomTextStyle.headerTextStyle),
          ),
        ),

        const SizedBox(height: 16),
        const Align(
            alignment: Alignment.centerLeft,
            child: Padding(padding: EdgeInsets.only(left: 8), child: Carousel()
                //SizedBox(height: 292, child: Carousel())
                )),
        //const SizedBox(height: 16),
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
            child: Text('выбор REUP', style: CustomTextStyle.headerTextStyle),
          ),
        ),

        //карусель выбора reup
        ReupChoise(
          controllerReupChoise: PageController(initialPage: 0),
          color: const Color.fromARGB(255, 188, 218, 99),
          showMoreButton: true,
        ),

// раздел с коллекциями
        Container(
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 188, 218, 99),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 48),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'Коллекции',
                  style: CustomTextStyle.headerTextStyle,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CollectionsSection(),
                  const SizedBox(
                    height: 48,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Text(
                        'мне нравится',
                        textAlign: TextAlign.right,
                        style: CustomTextStyle.headerTextStyle,
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
                          child: Carousel())),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: null,
                      icon: SvgPicture.asset('assets/icons/reup_icon_more.svg'),
                      iconSize: 64,
                      style: const ButtonStyle(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        //анимашка
        //UpcycleWidget(),
        //tr(),
        const SizedBox(
          height: 48,
        ),

        // карусель товаров
        const Align(
            alignment: Alignment.centerLeft,
            child:
                Padding(padding: EdgeInsets.only(left: 8), child: Carousel())),
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

        const AdSection(),
        const Footer(),
      ],
    ));
  }
}
