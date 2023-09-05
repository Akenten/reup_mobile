import 'package:flutter/material.dart';
import 'package:reup/features/common/styles.dart';
import 'package:reup/features/Profile/widgets/user_data.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: const SizedBox(
            height: 42,
            child: Center(
              child: Text(
                'профиль',
                style: CustomTextStyle.reupCartName,
                maxLines: 1,
              ),
            ),
          ),
        ),

        //мои данные
        GestureDetector(
          onTap: (() {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => UserData()));
          }),
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width - 32,
            decoration: const BoxDecoration(
                border: Border(
                    bottom:
                        BorderSide(color: Color.fromARGB(255, 224, 224, 224)))),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'мои данные',
                style: CustomTextStyle.reupProfileText,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: null,
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width - 32,
            decoration: const BoxDecoration(
                border: Border(
                    bottom:
                        BorderSide(color: Color.fromARGB(255, 224, 224, 224)))),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'мои заказы',
                style: CustomTextStyle.reupProfileText,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: null,
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width - 32,
            decoration: const BoxDecoration(
                border: Border(
                    bottom:
                        BorderSide(color: Color.fromARGB(255, 224, 224, 224)))),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'избранное',
                style: CustomTextStyle.reupProfileText,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: null,
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width - 32,
            decoration: const BoxDecoration(
                border: Border(
                    bottom:
                        BorderSide(color: Color.fromARGB(255, 224, 224, 224)))),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'стать продавцом',
                style: CustomTextStyle.reupProfileText,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: null,
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width - 32,
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'выход',
                style: TextStyle(
                  color: Color.fromARGB(255, 227, 6, 19),
                  fontSize: 16,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.12,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}