import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reup/order_registration_page/custom_text_form.dart';
import 'package:reup/order_registration_page/order_info.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'custom_box_decoration.dart';

class OrderRegistrationPage extends StatefulWidget {
  const OrderRegistrationPage({super.key});

  @override
  State<OrderRegistrationPage> createState() => _OrderRegistrationPageState();
}

class _OrderRegistrationPageState extends State<OrderRegistrationPage> {
  final TextEditingController _surname = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _patronymic = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  bool _isConfident = false;
  bool _isAction = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        title: const Text(
          'оформление заказа',
          style: TextStyle(
            fontFamily: 'Gilroy',
            color: Color.fromRGBO(0, 0, 0, 1),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: 
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const OrderInfo(),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Text(
                      '1.',
                      style: GoogleFonts.delaGothicOne(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.04,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      'адрес и доставка',
                      style: GoogleFonts.delaGothicOne(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.04,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'выбрать пункт выдачи',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                InkWell(
                  onTap: () => null,
                  child: Container(
                    height: 42,
                    decoration: CustomBoxDecoration.myBoxDecoration,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'пункт выдачи',
                            style: TextStyle(
                              fontFamily: 'Gilroy',
                              color: Color.fromRGBO(79, 79, 79, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.07,
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/icons/reup_arrow_down.svg',
                            width: 24,
                            height: 24,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Text(
                      '2.',
                      style: GoogleFonts.delaGothicOne(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.04,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Flexible(
                      child: Text(
                        'данные получателя',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: GoogleFonts.delaGothicOne(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.04,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'как вас зовут?',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(controller: _surname, hintText: 'фамилия*'),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(controller: _name, hintText: 'имя*'),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                    controller: _patronymic, hintText: 'отчество*'),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'контактные данные',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                    controller: _email, hintText: 'электронная почта*'),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                    controller: _phone, hintText: 'номер телефона*'),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  '*-поля обязательные для заполнения',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: _isConfident
                            ? BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: const Color.fromRGBO(0, 0, 0, 1)),
                                color: const Color.fromRGBO(121, 145, 245, 1))
                            : BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: const Color.fromRGBO(
                                        130, 130, 130, 1))),
                        child: _isConfident
                            ? Center(
                                child: SvgPicture.asset(
                                    'assets/icons/reup_checkbox.svg'),
                              )
                            : null,
                      ),
                      onTap: () {
                        setState(() {
                          _isConfident = !_isConfident;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Flexible(
                      child: Text.rich(
                        TextSpan(
                          text: 'я ознакомился и согласен с ',
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'политикой обработки персональных данных',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(
                              text: ' и пользовательским соглашением',
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: _isAction
                            ? BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: const Color.fromRGBO(0, 0, 0, 1)),
                                color: const Color.fromRGBO(121, 145, 245, 1))
                            : BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: const Color.fromRGBO(
                                        130, 130, 130, 1))),
                        child: _isAction
                            ? Center(
                                child: SvgPicture.asset(
                                    'assets/icons/reup_checkbox.svg'),
                              )
                            : null,
                      ),
                      onTap: () {
                        setState(() {
                          _isAction = !_isAction;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Flexible(
                      child: Text(
                        'я согласен получать новости об акциях и специальных предложениях',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 32,),
                Row(
                  children: [
                    Text(
                      '3.',
                      style: GoogleFonts.delaGothicOne(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.04,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Flexible(
                      child: Text(
                        'оплата',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: GoogleFonts.delaGothicOne(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.04,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
