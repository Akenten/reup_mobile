import 'package:flutter/material.dart';

class ProductImage extends StatefulWidget {
  const ProductImage({super.key});

  @override
  State<ProductImage> createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/reup_img3.jpg'),
        Padding(
          padding: const EdgeInsets.only(bottom: 16, right: 16),
          child: SizedBox(
            height: 20,
            width: 20,
            child: FloatingActionButton.small(
              onPressed: () => setState(() => isVisible = !isVisible),
              backgroundColor: Color.fromRGBO(228, 228, 228, 1),
              child: Text(
                '!',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ],
      alignment: Alignment.bottomRight,
    );
  }
}
