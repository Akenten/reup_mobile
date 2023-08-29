import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:reup/features/common/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

final GlobalKey _widgetKey = GlobalKey();

class RecentSearch extends StatefulWidget {
  final List<String> searches;
  const RecentSearch({super.key, required this.searches});

  @override
  State<RecentSearch> createState() => _RecentSearchState();
}

class _RecentSearchState extends State<RecentSearch> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'вы недавно искали',
          style: CustomButtonTextStyle.buttonItemStyle,
        ),
        const SizedBox(
          height: 16,
        ),
        Column(
          children: List.generate(widget.searches.length, (index) {
            return RecentSearchRow(search: widget.searches[index]);
          }),
        )
      ],
    );
  }
}

class RecentSearchRow extends StatelessWidget {
  final String search;
  const RecentSearchRow({super.key, required this.search});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            search,
            style: CustomTextStyle.promoTextStyle,
            maxLines: 1,
          ),

          const Spacer(),

          GestureDetector(
            onTap: (() {
              log('delete');
            }),
            child: const Icon(
              Icons.close_rounded,
              size: 15,
              color: Colors.black,
            ),
          ),

          // IconButton(
          //   iconSize: 14,
          //   onPressed: null,
          //   icon: const Icon(
          //     Icons.close_rounded,
          //     size: 14,
          //     color: Colors.black,
          //   ),
          //   style: IconButton.styleFrom(
          //     iconSize: 14,
          //     //tapTargetSize: MaterialTapTargetSize.shrinkWrap
          //   ),

          //   // SvgPicture.asset(
          //   //   'assets/icons/reup_icon_cross.svg',
          //   // width: 14,
          //   // height: 14,
          // ),
        ],
      ),
      const SizedBox(
        height: 16,
      ),
    ]);
  }
}

void getSize() {
  RenderBox renderbox =
      _widgetKey.currentContext!.findRenderObject() as RenderBox;
  double width = renderbox.size.width;
  double height = renderbox.size.height;

  print(width); //352.72727272727275
  print(height); //100.0
  // final Size size = renderBox.size; // or _widgetKey.currentContext?.size
  // print('Size: ${size.width}, ${size.height}');

  // final Offset offset = renderBox.localToGlobal(Offset.zero);
  // print('Offset: ${offset.dx}, ${offset.dy}');
  // print(
  //     'Position: ${(offset.dx + size.width) / 2}, ${(offset.dy + size.height) / 2}');
}
