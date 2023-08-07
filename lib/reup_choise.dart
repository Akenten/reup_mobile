import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reup/styles.dart';

// final controller = PageController(
//   initialPage: 0,

// );

final controllerReupChoise = PageController(
  initialPage: 0,
);

Timer _timer = Timer.periodic(Duration(seconds: 7), (Timer timer) {});

int _currentPage = 0;

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
    _timer = Timer.periodic(Duration(seconds: 7), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      controllerReupChoise.animateToPage(_currentPage,
          duration: Duration(milliseconds: 350), curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView(
          controller: controllerReupChoise,
          onPageChanged: (index) {
            _currentPage = index;
          },
          children: [
            reupChoisePage(
                data: reupChoiseData(
                    'BEFREE',
                    'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей',
                    Image.asset('assets/images/reup_img3.jpg'))),
            reupChoisePage(
                data: reupChoiseData(
                    'BEFREE',
                    'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей',
                    Image.asset('assets/images/reup_img3.jpg'))),
            reupChoisePage(
                data: reupChoiseData(
                    'BEFREE',
                    'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей',
                    Image.asset('assets/images/reup_img3.jpg'))),
          ]),
    );
  }
}

class reupChoiseData {
  final String title;
  final String text;
  final Image img;

  reupChoiseData(this.title, this.text, this.img);
}

class reupChoisePage extends StatefulWidget {
  final reupChoiseData data;
  const reupChoisePage({super.key, required this.data});

  @override
  State<reupChoisePage> createState() => _reupChoiseState();
}

class _reupChoiseState extends State<reupChoisePage> {
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
              padding: EdgeInsets.only(left: 16, right: 16),
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
        ],
      ),
    );
  }
}
