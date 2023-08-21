import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: null,
              child: Container(
                  height: 160,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Image.asset('assets/images/reup_outerwear.jpg')),
            ),
            GestureDetector(
              onTap: null,
              child: Container(
                  height: 160,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Image.asset('assets/images/reup_footwear.jpg')),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: null,
              child: Container(
                  height: 160,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Image.asset('assets/images/reup_pants.jpg')),
            ),
            GestureDetector(
              onTap: null,
              child: Container(
                  height: 160,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Image.asset('assets/images/reup_accessories.jpg')),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: null,
              child: Container(
                  height: 160,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Image.asset('assets/images/reup_bags.jpg')),
            ),
            GestureDetector(
              onTap: null,
              child: Container(
                  height: 160,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Image.asset('assets/images/reup_shirts.jpg')),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: null,
              child: Container(
                  height: 160,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Image.asset('assets/images/reup_dresses.jpg')),
            ),
            GestureDetector(
              onTap: null,
              child: Container(
                  height: 160,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Image.asset('assets/images/reup_costumes.jpg')),
            )
          ],
        )
      ],
    );
  }
}
