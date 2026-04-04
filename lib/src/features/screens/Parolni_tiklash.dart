import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_app/color/AppColor.dart';

class ParolniTiklashPage extends StatefulWidget {
  const ParolniTiklashPage({super.key});

  @override
  State<ParolniTiklashPage> createState() => _ParolniTiklashPageState();
}

class _ParolniTiklashPageState extends State<ParolniTiklashPage> {
   
  
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'assets/images/3_chiziq.png',
          width: 14,
          height: 12,
        ),
        title: Text(
          '8 800 444 00 65',
          style: GoogleFonts.poppins(color: AppColor.black),
        ),
        actions: [
          Text(
            'Заказать звонок',
            style: GoogleFonts.poppins(
              fontSize: 11,
              fontWeight: FontWeight.w700,
              color: AppColor.lightBlue,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Row(
                children: [
                  SizedBox(width: 15),
                  Image.asset('assets/images/logo.png', width: 122, height: 25),
                  SizedBox(width: 22),
                  Image.asset(
                    'assets/images/profile.png',
                    width: 19,
                    height: 19,
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    'assets/images/3_chiziq.png',
                    width: 19,
                    height: 19,
                  ),
                  SizedBox(width: 10),
                  Image.asset('assets/images/like.png', width: 19, height: 19),
                  SizedBox(width: 10),
                  Image.asset(
                    'assets/images/korzinka.png',
                    width: 19,
                    height: 19,
                  ),
                  SizedBox(width: 10),
                ],
              ),

              Row(
                children: [
                  Spacer(),
                  Container(
                    width: 186,
                    height: 46,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColor.deepBlue,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Spacer(),
                        Image.asset(
                          'assets/images/con_chiziq.png',
                          width: 25,
                          height: 25,
                        ),
                        Spacer(),

                        Text(
                          'Каталог',
                          style: GoogleFonts.poppins(
                            color: AppColor.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 134,
                    height: 46,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColor.deepBlue,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Spacer(),

                        Text(
                          'Каталог',
                          style: GoogleFonts.poppins(
                            color: AppColor.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(height: 27),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ' Стройоптторг  ',
                    style: GoogleFonts.poppins(
                      color: AppColor.ochroqBlackText,
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    '/  Регистрация',
                    style: GoogleFonts.poppins(
                      color: AppColor.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              Text(
                'Восстанавление паролья',
                style: GoogleFonts.poppins(
                  color: AppColor.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Email *:',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: AppColor.textBlack,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Введите ваш email адрес",
                  filled: true,
                  fillColor: const Color(0xFFF9F9F9),

                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 16,
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColor.deepBlue,
                    ),
                    child: Center(
                      child: Text(
                        'Зарегистрироваться',
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: AppColor.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}
