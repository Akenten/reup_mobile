import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderSucceedPage extends StatelessWidget {
  const OrderSucceedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'корзина',
          style: TextStyle(
            fontFamily: 'Gilroy',
            color: Color.fromRGBO(0, 0, 0, 1),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ваш заказ оформлен!',
                  style: GoogleFonts.delaGothicOne(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.04,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Text.rich(
                  TextSpan(
                    text: 'подробности заказа вы можете посмотреть в разделе ',
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 1.07),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'мои заказы',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                InkWell(
                  onTap: () => null,
                  child: Container(
                    height: 42,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(130, 130, 130, 1),
                        width: 1,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'продолжить покупки',
                        style: TextStyle(
                          fontFamily: 'Gilroy',
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.07,
                        ),
                      ),
                    ),
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
