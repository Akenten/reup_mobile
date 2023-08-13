import 'package:flutter/material.dart';

class SizeButtonModel {
  String size;
  bool isSelected;
  bool isAvailible;
  SizeButtonModel(this.size, this.isSelected, this.isAvailible);
}

class SizeButtonCompleted extends StatefulWidget {
  const SizeButtonCompleted({super.key, required this.availableSizes});

  final List<String> availableSizes;
  @override
  State<SizeButtonCompleted> createState() => _SizeButtonCompletedState();
}

class _SizeButtonCompletedState extends State<SizeButtonCompleted> {
  List<SizeButtonModel> buttonsMock = [];
  @override
  void initState() {
    super.initState();
    for (var size in widget.availableSizes) {
      buttonsMock.add(SizeButtonModel(size, false, false));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (c, index) {
            return GestureDetector(
              onTap: () {
                setState(
                  () {
                    buttonsMock[index].isSelected = true;
                    for (int i = 0; i < buttonsMock.length; i++) {
                      if (index == i) continue;
                      buttonsMock[i].isSelected = false;
                    }
                  },
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  color: buttonsMock[index].isSelected
                      ? const Color.fromRGBO(121, 145, 245, 1)
                      : Colors.white,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  child: Text(
                    buttonsMock[index].size,
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      color: buttonsMock[index].isSelected
                          ? Colors.white
                          : Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.07,
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: ((context, index) => Container(
                width: 8,
              )),
          itemCount: buttonsMock.length),
    );
  }
}
