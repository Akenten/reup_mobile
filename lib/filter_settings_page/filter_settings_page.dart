import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'custom_text_form.dart';

class FilterSettingsPage extends StatefulWidget {
  const FilterSettingsPage({super.key});

  @override
  State<FilterSettingsPage> createState() => _FilterSettingsPageState();
}

class _FilterSettingsPageState extends State<FilterSettingsPage> {
  TextEditingController _priceStart = TextEditingController();
  TextEditingController _priceEnd = TextEditingController();

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
          'фильтры',
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'цена',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Flexible(
                      child: SizedBox(
                        height: 42,
                        child: CustomTextFormField(
                            controller: _priceStart, hintText: 'от'),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Flexible(
                      child: SizedBox(
                        height: 42,
                        child: CustomTextFormField(
                            controller: _priceEnd, hintText: 'до'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const Divider(
                  height: 1,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  'категории',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
