import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_app/color/AppColor.dart';

class ResgisterPage extends StatelessWidget {
  const ResgisterPage({super.key});
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
        child: Column(
          children: [
            SizedBox(height: 15),
            Row(children: [SizedBox(width: 15), Image.asset('')]),
          ],
        ),
      ),
    );
  }
}