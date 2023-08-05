import 'package:flutter/material.dart';

class ProductCharacteristics extends StatefulWidget {
  const ProductCharacteristics({super.key});

  @override
  State<ProductCharacteristics> createState() => _ProductCharacteristicsState();
}

class _ProductCharacteristicsState extends State<ProductCharacteristics> {
  bool expandedFlag = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'о товаре',
              style: TextStyle(
                fontFamily: 'Gilroy',
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.07,
              ),
            ),
            InkWell(
              onTap: () => setState(() => expandedFlag = !expandedFlag),
              child: Container(
                padding: EdgeInsets.zero,
                child: Text(
                  expandedFlag ? '-' : '+',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.07,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        AnimatedSize(
          duration: Duration(milliseconds: 300),
          curve: Curves.bounceIn,
          alignment: Alignment.topCenter,
          child: expandedFlag
              ? Wrap(
                  runSpacing: 8,
                  children: [
                    CharacteristicsEntry(
                        title: 'состав', subtitle: 'какой-то состав'),
                    CharacteristicsEntry(title: 'сезон', subtitle: 'зима-лето'),
                    CharacteristicsEntry(title: 'узор', subtitle: 'зебра'),
                    CharacteristicsEntry(
                        title: 'стиль', subtitle: 'постмодерн'),
                    CharacteristicsEntry(title: 'цвет', subtitle: 'белый'),
                  ],
                )
              : SizedBox.shrink(),
        ),

        // expandedFlag ? Wrap(
        //   runSpacing: 8,
        //   children: [
        //     CharacteristicsEntry(title: 'состав', subtitle: 'какой-то состав'),
        //     CharacteristicsEntry(title: 'сезон', subtitle: 'зима-лето'),
        //     CharacteristicsEntry(title: 'узор', subtitle: 'зебра'),
        //     CharacteristicsEntry(title: 'стиль', subtitle: 'постмодерн'),
        //     CharacteristicsEntry(title: 'цвет', subtitle: 'белый'),
        //   ],
        // ) : SizedBox.shrink(),
      ],
    );
  }
}

class CharacteristicsEntry extends StatelessWidget {
  final String title;
  final String subtitle;

  CharacteristicsEntry({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Gilroy',
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.07,
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontFamily: 'Gilroy',
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w300,
            letterSpacing: 1.07,
          ),
        ),
      ],
    );
  }
}
