import 'package:flutter/material.dart';
import 'package:reup/common/styles.dart';

class SummaryData {
  final int finalSum;
  final int discount;
  SummaryData(this.finalSum, this.discount);
}

class Summary extends StatelessWidget {
  //final SummaryData data;
  const Summary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'итого:',
              style: CustomButtonTextStyle.buttonItemStyle,
            ),
            Text(
              '10 000₽',
              style: CustomButtonTextStyle.buttonItemStyle,
            )
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'товары 10 шт:',
              style: CustomTextStyle.reupCartSummary,
            ),
            Text(
              '12 000₽',
              style: CustomTextStyle.reupCartSummary,
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
              style: CustomTextStyle.reupCartSummary,
            ),
            Text(
              '- 2 000₽',
              style: CustomTextStyle.reupCartSummary,
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
              'доставка:',
              style: CustomTextStyle.reupCartSummary,
            ),
            Text(
              'бесплатно',
              style: CustomTextStyle.reupCartSummary,
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        // TextField(
        //   decoration: InputDecoration(
        //     //border: OutlineInputBorder(),
        //     // Color.fromARGB(255, 188, 218, 99),
        //     fillColor: Color.fromARGB(255, 182, 14, 14),
        //     //hoverColor: Color.fromARGB(255, 243, 243, 243),

        //     hintText: 'введите промокод',
        //   ),
        // )
        TextFormField(
          decoration: const InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(255, 243, 243, 243),
            hintText: 'введите промокод',
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        OutlinedButton(
            onPressed: null,
            style: OutlinedButton.styleFrom(
                minimumSize: const Size(double.infinity, 42),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                side: const BorderSide(color: Colors.black, width: 1),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                )),
            child: const Text('оформить заказ',
                style: CustomButtonTextStyle.buttonBoldStyle))
      ],
    );
  }
}
