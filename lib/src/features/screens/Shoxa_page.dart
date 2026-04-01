import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_app/color/AppColor.dart';
import 'package:practice_app/src/features/widgets/custom.dart';
import 'package:practice_app/src/features/widgets/custom_textfield.dart';
import 'package:practice_app/src/features/widgets/customtextfield2.dart';

class Shoxa_page extends StatefulWidget {
  const Shoxa_page({super.key});

  @override
  State<Shoxa_page> createState() => _Shoxa_pageState();
}

class _Shoxa_pageState extends State<Shoxa_page> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Scaffold(
      body: Center(
        child: Dialog(
          child: AlertDialog(
            content: Container(
              padding: EdgeInsets.symmetric(horizontal:15,vertical: 15 ),
              width: 560,
              height: 610,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColor.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Заказать в 1 клик',
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColor.textBlack,
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(  mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Дрель-шуруповерт аккумуляторная MAKITA DF \n347DWE14 В 1,5 А/ч',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.textBlack,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ваше имя *:',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.textBlack,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                SizedBox(width:50 ,),  custom_textField(),SizedBox(width:50 ,),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email адрес *:',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.textBlack,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  custom_textField2(),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Номер телефона *:',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.textBlack,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  custom_textField3(),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Checkbox.adaptive(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Text(
                        'Согласен с обработкой персональных данных в \n соответствии с политикой конфиденциальности',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: AppColor.ochroqBlackText,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 250,
                    height: 57,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColor.deepBlue,
                    ),
                    child: Center(
                      child: Text(
                        'купить',
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
            ),
          ),
        ),
      ),
    );
  }
}
