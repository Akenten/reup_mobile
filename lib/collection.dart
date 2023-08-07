import 'package:flutter/material.dart';
import 'package:reup/styles.dart';

class collection extends StatefulWidget {
  final collectionData data;
  const collection({super.key, required this.data});

  @override
  State<collection> createState() => _collectionState();
}

class collectionData {
  final String collectionName;
  final String Brand;
  final Image img;
  collectionData(this.collectionName, this.Brand, this.img);
}

class _collectionState extends State<collection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 179,
      height: 227,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 0.5),
        color: Colors.white,
      ),
      child: Column(children: [
        Container(
          width: 179,
          height: 173,
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black, width: 0.5)),
          ),
          child: FittedBox(
            child: widget.data.img,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(height: 8),
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  widget.data.collectionName,
                  style: CustomTextStyle.boldTextStyle,
                  maxLines: 1,
                ))),
        const SizedBox(
          height: 8,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              widget.data.Brand,
              style: CustomTextStyle.promoTextStyle,
              maxLines: 1,
            ),
          ),
        )
      ]),
    );
  }
}
