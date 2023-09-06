import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reup/sort_settings_page/radio_button.dart';

class SortSettingsPage extends StatefulWidget {
  const SortSettingsPage({super.key});

  @override
  State<SortSettingsPage> createState() => _SortSettingsPageState();
}

class _SortSettingsPageState extends State<SortSettingsPage> {
  List isChecked = [
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/reup_icon_back_arrow.svg'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'сортировка',
          style: TextStyle(
            fontFamily: 'Gilroy',
            color: Color.fromRGBO(0, 0, 0, 1),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  CustomRadioButton(
                    isChecked: isChecked[0],
                    buttonText: 'сначала дешевле',
                    onTap: () {
                      setState(() {
                        isChecked[0] = true;
                        isChecked[1] = false;
                        isChecked[2] = false;
                      });
                    },
                  ),
                  const SizedBox(height: 8),
                  CustomRadioButton(
                    isChecked: isChecked[1],
                    buttonText: 'сначала дороже',
                    onTap: () {
                      setState(() {
                        isChecked[0] = false;
                        isChecked[1] = true;
                        isChecked[2] = false;
                      });
                    },
                  ),
                  const SizedBox(height: 8),
                  CustomRadioButton(
                    isChecked: isChecked[2],
                    buttonText: 'по величине скидки',
                    onTap: () {
                      setState(() {
                        isChecked[0] = false;
                        isChecked[1] = false;
                        isChecked[2] = true;
                      });
                    },
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 42,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'применить',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
