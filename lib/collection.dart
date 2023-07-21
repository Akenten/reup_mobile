import 'package:flutter/material.dart';

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
      child: Stack(
        children: [
          Container(
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.black, width: 0.5))),
              child: widget.data.img),
          Positioned(
            top: 181,
            left: 8,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.data.collectionName,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.98,
                ),
              ),
            ),
          ),
          Positioned(
              left: 8,
              bottom: 8,
              child: Text(widget.data.Brand,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w300,
                    letterSpacing: 0.98,
                  )))
        ],
      ),
    );
  }
}
