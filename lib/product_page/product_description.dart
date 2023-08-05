import 'package:flutter/material.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({super.key});

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  bool expandedFlag = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'описание',
          style: TextStyle(
            fontFamily: 'Gilroy',
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.07,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Integer vitae justo eget magna fermentum iaculis eu. Odio tempor orci dapibus ultrices in iaculis nunc sed augue. A diam sollicitudin tempor id eu. Cras pulvinar mattis nunc sed blandit libero volutpat. Duis convallis convallis tellus id. Pellentesque sit amet porttitor eget dolor morbi non arcu. Quis lectus nulla at volutpat. Nunc consequat interdum varius sit amet mattis vulputate. Ornare massa eget egestas purus. Cursus sit amet dictum sit amet justo donec enim. Penatibus et magnis dis parturient montes nascetur. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget egestas.',
          maxLines: expandedFlag ? null : 4,
          overflow: expandedFlag ? TextOverflow.visible : TextOverflow.ellipsis,
          style: TextStyle(
            fontFamily: 'Gilroy',
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w300,
            letterSpacing: 1.07,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        TextButton(
          onPressed: () => setState(() => expandedFlag = !expandedFlag),
          child: expandedFlag ? Text(
            'скрыть',
          ) : Text('показать больше'),
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            padding: EdgeInsets.zero,
            textStyle: TextStyle(
              fontFamily: 'Gilroy',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.07,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
