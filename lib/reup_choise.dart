import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

final controller = PageController(
  initialPage: 0,
);

class reupChoiseData {
  final String title;
  final String text;
  final Image img;

  reupChoiseData(this.title, this.text, this.img);
}

class reupChoise extends StatefulWidget {
  final reupChoiseData data;
  const reupChoise({super.key, required this.data});

  @override
  State<reupChoise> createState() => _reupChoiseState();
}

class _reupChoiseState extends State<reupChoise> {
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
                style: GoogleFonts.delaGothicOne(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.40,
                ),
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
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w400,
                //height: 15.40,
                letterSpacing: 0.98,
              ),
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
