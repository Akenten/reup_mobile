import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reup/common/styles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final controllerReupChoise = PageController(
  initialPage: 0,
);

Timer _timer = Timer.periodic(const Duration(seconds: 7), (Timer timer) {});

int _currentPage = 0;

int _numberOfPages = 6;

class ReupChoise extends StatefulWidget {
  const ReupChoise({
    super.key,
  });

  @override
  State<ReupChoise> createState() => _ReupChoiseState();
}

class _ReupChoiseState extends State<ReupChoise> {
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 7), (Timer timer) {
      if (_currentPage < _numberOfPages - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      controllerReupChoise.animateToPage(_currentPage,
          duration: const Duration(milliseconds: 350), curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 500,
          child: PageView(
              controller: controllerReupChoise,
              onPageChanged: (index) {
                _currentPage = index;
                _timer.cancel();
                _timer =
                    Timer.periodic(const Duration(seconds: 7), (Timer timer) {
                  if (_currentPage < _numberOfPages - 1) {
                    _currentPage++;
                  } else {
                    _currentPage = 0;
                  }

                  controllerReupChoise.animateToPage(_currentPage,
                      duration: const Duration(milliseconds: 350),
                      curve: Curves.easeIn);
                });
              },
              children: [
                ReupChoisePage(
                    data: ReupChoiseData(
                        'BEFREE',
                        'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей',
                        Image.asset('assets/images/reup_img3.jpg'))),
                ReupChoisePage(
                    data: ReupChoiseData(
                        'BEFREE',
                        'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей',
                        Image.asset('assets/images/reup_img3.jpg'))),
                ReupChoisePage(
                    data: ReupChoiseData(
                        'BEFREE',
                        'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей',
                        Image.asset('assets/images/reup_img3.jpg'))),
                ReupChoisePage(
                    data: ReupChoiseData(
                        'BEFREE',
                        'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей',
                        Image.asset('assets/images/reup_img3.jpg'))),
                ReupChoisePage(
                    data: ReupChoiseData(
                        'BEFREE',
                        'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей',
                        Image.asset('assets/images/reup_img3.jpg'))),
                ReupChoisePage(
                    data: ReupChoiseData(
                        'BEFREE',
                        'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей',
                        Image.asset('assets/images/reup_img3.jpg'))),
              ]),
        ),

        // Padding(
        //   padding: EdgeInsets.only(left: 16),
        //   child: Text(
        //     '$_currentPage из 6',
        //     style: CustomButtonTextStyle.buttonBoldStyle,
        //   ),
        // ),

        //индикатор страниц
        Container(
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 188, 218, 99),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: SmoothPageIndicator(
              controller: controllerReupChoise,
              count: 6,
              effect: ExpandingDotsEffect(
                  dotColor: Colors.white.withOpacity(0.5),
                  activeDotColor: Colors.black,
                  radius: 0,
                  dotHeight: 8,
                  spacing: 4,
                  dotWidth: 8,
                  //expansionFactor: 37,
                  expansionFactor: _getExpansionFactor(context)),
            ),
          ),
        )
      ],
    );
  }

  //TODO изменить цифры на переменные
  double _getExpansionFactor(BuildContext context) {
    int _numberOfInactivePages = _numberOfPages - 1;
    int _distanceBetween =
        4; // расстояние в пикселях между точками неактивных страниц
    int _pointSize =
        8; // размер неактиных точек (указывается еще в билдере smoothPage)

    return ((MediaQuery.of(context).size.width -
                32 -
                (_numberOfInactivePages * _distanceBetween +
                    _numberOfInactivePages * _pointSize)) ~/
            _pointSize)
        .toDouble();
  }
}

class ReupChoiseData {
  final String title;
  final String text;
  final Image img;

  ReupChoiseData(this.title, this.text, this.img);
}

class ReupChoisePage extends StatefulWidget {
  final ReupChoiseData data;
  const ReupChoisePage({super.key, required this.data});

  @override
  State<ReupChoisePage> createState() => _reupChoiseState();
}

class _reupChoiseState extends State<ReupChoisePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 188, 218, 99),
      height: 500, //446
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text(
                widget.data.title,
                style: CustomTextStyle.reupChoiseTitle,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              widget.data.text,
              style: CustomTextStyle.reupChoiseText,
            ),
          ),
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
          widget.data.img,
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
