import 'package:flutter/material.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          height: 1,
          color: Colors.black,
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'ваш заказ:',
              style: TextStyle(
                fontFamily: 'Gilroy',
                color: Color.fromRGBO(0, 0, 0, 1),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            InkWell(
              onTap: () => print(1),
              child: Container(
                padding: EdgeInsets.zero,
                child: const Text(
                  'изменить',
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
        const SizedBox(height: 16),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'товары 10 шт:',
              style: TextStyle(
                fontFamily: 'Gilroy',
                color: Color.fromRGBO(0, 0, 0, 1),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '12 000 ₽',
              style: TextStyle(
                fontFamily: 'Gilroy',
                color: Color.fromRGBO(0, 0, 0, 1),
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'скидка:',
              style: TextStyle(
                fontFamily: 'Gilroy',
                color: Color.fromRGBO(0, 0, 0, 1),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '-2 000 ₽',
              style: TextStyle(
                fontFamily: 'Gilroy',
                color: Color.fromRGBO(0, 0, 0, 1),
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8,),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'доставка:',
              style: TextStyle(
                fontFamily: 'Gilroy',
                color: Color.fromRGBO(0, 0, 0, 1),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'бесплатно',
              style: TextStyle(
                fontFamily: 'Gilroy',
                color: Color.fromRGBO(0, 0, 0, 1),
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16,),
        const Divider(
          height: 1,
          color: Colors.black,
        ),
      ],
    );
  }
}
