import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'carousel.dart';
import 'reup_choise.dart';
import 'collection.dart';
import 'styles.dart';
import 'promo.dart';

final controllerReupChoise = PageController(
  initialPage: 0,
);

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Promo(),

        // ряды кнопок с категориями товаров
        Row(
          children: [
            Expanded(
                flex: 1,
                child: OutlinedButton(
                    onPressed: (() {
                      log('more');
                    }),
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(right: 16),
                        side: BorderSide(color: Colors.black, width: 1),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
                    child: const Text('верхняя одежда',
                        maxLines: 1,
                        style: CustomButtonTextStyle.buttonItemStyle))),
            Expanded(
                flex: 1,
                child: OutlinedButton(
                    onPressed: (() {
                      log('more');
                    }),
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side: BorderSide(color: Colors.black, width: 1),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
                    child: const Text('обувь',
                        maxLines: 1,
                        style: CustomButtonTextStyle.buttonItemStyle)))
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: OutlinedButton(
                    onPressed: (() {
                      log('more');
                    }),
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side: BorderSide(color: Colors.black, width: 1),
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 89),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
                    child: const Text('сумки',
                        maxLines: 1,
                        style: CustomButtonTextStyle.buttonItemStyle))),
            Expanded(
                flex: 1,
                child: OutlinedButton(
                    onPressed: (() {
                      log('more');
                    }),
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side: BorderSide(color: Colors.black, width: 1),
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(right: 32),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
                    child: const Text('рубашки',
                        maxLines: 1,
                        style: CustomButtonTextStyle.buttonItemStyle)))
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: OutlinedButton(
                    onPressed: (() {
                      log('more');
                    }),
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side: BorderSide(color: Colors.black, width: 1),
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 40),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
                    child: const Text('платья',
                        maxLines: 1,
                        style: CustomButtonTextStyle.buttonItemStyle))),
            Expanded(
                flex: 1,
                child: OutlinedButton(
                    onPressed: (() {
                      log('more');
                    }),
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side: BorderSide(color: Colors.black, width: 1),
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 20),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
                    child: const Text('костюмы',
                        maxLines: 1,
                        style: CustomButtonTextStyle.buttonItemStyle)))
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: OutlinedButton(
                    onPressed: (() {
                      log('more');
                    }),
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side: BorderSide(color: Colors.black, width: 1),
                        alignment: Alignment.center,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
                    child: const Text('штаны',
                        maxLines: 1,
                        style: CustomButtonTextStyle.buttonItemStyle))),
            Expanded(
                flex: 1,
                child: OutlinedButton(
                    onPressed: (() {
                      log('more');
                    }),
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(right: 16),
                        side: BorderSide(color: Colors.black, width: 1),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
                    child: const Text('аксессуары',
                        maxLines: 1,
                        style: CustomButtonTextStyle.buttonItemStyle)))
          ],
        ),
        // тут кончаются кнопки

        const SizedBox(height: 48),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text('подобрали для тебя',
                style: CustomTextStyle.headerTextStyle),
          ),
        ),

        const SizedBox(height: 16),
        const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(left: 8),
                child: SizedBox(height: 292, child: carousel()))),
        //const SizedBox(height: 16),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 16),
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
        SizedBox(
          height: 500,
          child: PageView(controller: controllerReupChoise, children: [
            reupChoise(
                data: reupChoiseData(
                    'BEFREE',
                    'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей',
                    Image.asset('assets/images/reup_img3.jpg'))),
            reupChoise(
                data: reupChoiseData(
                    'BEFREE',
                    'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей',
                    Image.asset('assets/images/reup_img3.jpg'))),
            reupChoise(
                data: reupChoiseData(
                    'BEFREE',
                    'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей',
                    Image.asset('assets/images/reup_img3.jpg'))),
          ]),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      collection(
                        data: collectionData('Название коллекции', 'бренд',
                            Image.asset('assets/images/reup_collection.jpg')),
                      ),
                      collection(
                        data: collectionData('Название коллекции', 'бренд',
                            Image.asset('assets/images/reup_collection.jpg')),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      collection(
                        data: collectionData('Название коллекции', 'бренд',
                            Image.asset('assets/images/reup_collection.jpg')),
                      ),
                      collection(
                        data: collectionData('Название коллекции', 'бренд',
                            Image.asset('assets/images/reup_collection.jpg')),
                      ),
                    ],
                  ),
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
                          child: SizedBox(height: 292, child: carousel()))),
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
        const SizedBox(
          height: 48,
        ),

        // карусель товаров
        const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(left: 8),
                child: SizedBox(height: 292, child: carousel()))),
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

        // Row(
        //   //crossAxisAlignment: CrossAxisAlignment.stretch,
        //   children: [
        //     Expanded(
        //         child: Image.asset(
        //       'assets/images/reup_ad1.jpg',
        //       fit: BoxFit.fitWidth,
        //     )),
        //     Expanded(
        //         child: Container(
        //       color: Colors.red,
        //       child: IconButton(
        //         onPressed: (() {
        //           log('tap');
        //         }),
        //         style: IconButton.styleFrom(
        //             tapTargetSize: MaterialTapTargetSize.shrinkWrap),
        //         //iconSize: double.infinity,
        //         icon: SvgPicture.asset(
        //           'assets/images/reup_ad1.1.svg',
        //           //fit: BoxFit.contain,
        //         ),
        //       ),
        //     ))
        //   ],
        // ),

// соцсети
        Row(
          children: [
            // Text(
            //   'REUP',
            //   style: GoogleFonts.delaGothicOne(
            //     color: Colors.black,
            //     fontSize: 24,
            //     fontWeight: FontWeight.w400,
            //     letterSpacing: 0.96,
            //   ),
            // ),
            //const Expanded(child: SizedBox()),
            IconButton(
              onPressed: null,
              icon: SvgPicture.asset('assets/icons/reup_icon_vk.svg'),
              //iconSize: 40,
            ),
            IconButton(
              onPressed: null,
              icon: SvgPicture.asset('assets/icons/reup_icon_inst.svg'),
              //iconSize: 40,
            ),
            IconButton(
              onPressed: null,
              icon: SvgPicture.asset('assets/icons/reup_icon_fb.svg'),
              //iconSize: 40,
            ),
            IconButton(
              onPressed: null,
              icon: SvgPicture.asset('assets/icons/reup_icon_tg.svg'),
              //iconSize: 40,
            ),
          ],
        ),

        // текстовые кнопки для помощи
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              textDirection: TextDirection.ltr,
              children: [
                TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: null,
                    child: const Text(
                      'Написать в поддержку',
                      style: CustomButtonTextStyle.basicStyle,
                    )),
                TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: null,
                    child: const Text('FAQ',
                        style: CustomButtonTextStyle.basicStyle)),
                TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: null,
                    child: const Text('Публичная оферта',
                        style: CustomButtonTextStyle.basicStyle)),
              ],
            ),
          ),
        ),

        //кнопка "стать продавцом"
        const SizedBox(height: 16),
        Row(children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: OutlinedButton(
                  onPressed: null,
                  style: OutlinedButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: BorderSide(color: Colors.black, width: 1),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      )),
                  child: const Text('Стать продавцом',
                      style: CustomButtonTextStyle.buttonBoldStyle)),
            ),
          ),
        ])
      ],
    ));
  }
}

class UpcycleWidget extends StatefulWidget {
  const UpcycleWidget({super.key});

  @override
  State<UpcycleWidget> createState() => _UpcycleWidgetState();
}

class _UpcycleWidgetState extends State<UpcycleWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  ScrollController scrollControllerUpcycle = ScrollController();

  @override
  void initState() {
    super.initState();
    // _controller = AnimationController(vsync: this);
    if (scrollControllerUpcycle.hasClients) {
      scrollControllerUpcycle.animateTo(99999,
          duration: Duration(hours: 2), curve: Curves.easeOut);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return SvgPicture.asset('assets/icons/upcycle.svg');
        },
        itemCount: 99999999,
        controller: scrollControllerUpcycle,
      ),
    );
  }
}
