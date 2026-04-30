import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_app/src/core/const/color/AppColor.dart';
import 'package:practice_app/src/features/auth/presentation/widgets/AppIcon.dart';
import 'package:practice_app/src/features/auth/presentation/widgets/AppInput.dart';
import 'package:practice_app/src/features/auth/presentation/widgets/AppText.dart';
import 'package:practice_app/src/features/auth/presentation/widgets/custom_appbar.dart';
import 'package:practice_app/src/features/auth/presentation/widgets/custom_drawer.dart';
import 'package:practice_app/src/features/auth/presentation/widgets/order_bottom_sheet.dart';

class ParolniTiklashScreen extends StatefulWidget {
  const ParolniTiklashScreen({super.key});

  @override
  State<ParolniTiklashScreen> createState() => _ParolniTiklashScreenState();
}

class _ParolniTiklashScreenState extends State<ParolniTiklashScreen> {
  final email = TextEditingController();
  final phone = TextEditingController();
  final name = TextEditingController();
  final region = TextEditingController();
  final password = TextEditingController();
  final confirm = TextEditingController();

  bool agree1 = false;
  bool agree2 = false;
  bool hide1 = true;
  bool hide2 = true;

  void show(String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  void register() {
    if (email.text.isEmpty || password.text.isEmpty || confirm.text.isEmpty) {
      show("Barcha maydonlarni to‘ldiring");
      return;
    }

    if (!email.text.contains("@")) {
      show("Email noto‘g‘ri");
      return;
    }

    if (password.text != confirm.text) {
      show("Parollar mos emas");
      return;
    }

    if (!agree1 || !agree2) {
      show("Shartlarga rozilik bering");
      return;
    }

    show("SUCCESS ✅");
  }

  @override
  Widget build(BuildContext context) {
     double w = MediaQuery.of(context).size.width;
    return Scaffold(


      drawer: CustomDrawer(
          onCallPressed: () {
            showOrderDialog(context);
          },
        ),

        drawerScrimColor: const Color(0xCC1B2937),

        appBar: CustomAppBar(
          onCallTap: () {
            showOrderDialog(context);
          },
        ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: w * 0.04),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// HEADER
                        
                
                          /// LOGO + ICONS
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/Logo.png",
                                  height: 40,
                                  width: 159,
                                ),
                                const Spacer(),
                                AppIcon(icon: 'person',size: 27,),
                                const SizedBox(width: 12),
                                AppIcon(icon: 'menu',size: 25,),
                                const SizedBox(width: 12),
                
                                Stack(
                                  children: [
                                    AppIcon(icon: "like",size: 25,),
                                    Positioned(
                                      right: 0,
                                      top: 0,
                                      child: CircleAvatar(
                                        radius: 6,
                                        backgroundColor: Colors.red,
                                        child: const AppText(
                                          text: "3",
                                          size: 8,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                
                                const SizedBox(width: 12),
                
                                Stack(
                                  children: [
                                    AppIcon(icon: 'cart',size: 25,),
                                    Positioned(
                                      right: 0,
                                      top: 0,
                                      child: CircleAvatar(
                                        radius: 6,
                                        backgroundColor: Colors.red,
                                        child: const AppText(
                                          text: "3",
                                          size: 8,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                
                          /// SEARCH
                          Row(
                            children: [
                              /// KATALOG
                              Container(
                                height: 46,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 14,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    AppIcon(
                                      icon: 'menu3',
                                      color: Colors.white,
                                      width: 18,
                                      height: 6,
                                    ),
                                    const SizedBox(width: 10),
                                    const AppText(
                                      text: "КАТАЛОГ",
                                      color: Colors.white,
                                      weight: FontWeight.w700,
                                      size: 12,
                                    ),
                                  ],
                                ),
                              ),
                
                              const SizedBox(width: 10),
                
                              /// SEARCH
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                
                                  child: Row(
                                    children: [
                                      /// 🔍 TEXT FIELD
                                      Expanded(
                                        child: Container(
                                          height: 46,
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 14,
                                          ),
                                          decoration: BoxDecoration(
                                            color: const Color(0xffF3F4F6),
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                            border: Border.all(
                                              color: Colors.blue,
                                              width: 2,
                                            ),
                                          ),
                                          child: const TextField(
                                            decoration: InputDecoration(
                                              hintText: "Поиск...",
                                              border: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                      ),
                
                                      /// 🔵 SEARCH BUTTON
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                          horizontal: 12,
                                          vertical: 14,
                                        ),
                                        child: Center(
                                          child: AppIcon(
                                            icon: 'search',
                                            color: Colors.white,
                                            width: 18,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              AppText(
                                text: 'Стройоптторг  /   ',
                                color: AppColor.kbluedark,
                                size: 13,
                                weight: FontWeight.w400,
                              ),
                              AppText(
                                text: 'Регистрация',
                                color: AppColor.kwhitegrey,
                                size: 13,
                                weight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ),
                      ),
                
                      const AppText(
                        text: "Восстановление пароля",
                        size: 30,
                        weight: FontWeight.w700,
                      ),
                
                      /// FORM
                      Container(
                        margin: const EdgeInsets.all(12),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 20,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColor.grey),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Забыли свой пароль?',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  ' Укажите свой',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.normal,
                                    color: AppColor.ochroqBlackText,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Email или имя пользователя. Ссылку на \n создание нового пароля вы получите \n            по электронной почте.',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.normal,
                                color: AppColor.ochroqBlackText,
                              ),
                            ),
                            SizedBox(height: 10,),
                            AppInput(
                              title: "Email или логин",
                              hint: "Введите email",
                              controller: email,
                            ),
                
                            const SizedBox(height: 15),
                
                            SizedBox(
                              width: 350,
                              height: 64, // 🔥 Figma size
                              child: ElevatedButton(
                                onPressed: register,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(
                                    0xff186FD4,
                                  ), // 🔥 aniq ko‘k (istasa o‘zgartir)
                                  /// 🔥 radius
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                
                                  /// 🔥 ichki padding (optional)
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 16,
                                  ),
                                ),
                                child: const Text(
                                  "Сбросить пароль",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                
                            const SizedBox(height: 16),
                
                            /// 🔥 FOOTER TEXT
                          ],
                        ),
                      ),
                    ],
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
