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

class AvtorizatsiyaScreen extends StatefulWidget {
  const AvtorizatsiyaScreen({super.key});

  @override
  State<AvtorizatsiyaScreen> createState() => _AvtorizatsiyaScreenState();
}

class _AvtorizatsiyaScreenState extends State<AvtorizatsiyaScreen> {
  final email = TextEditingController();
  final password = TextEditingController();

  bool remember = false;
  bool hide = true;

  void show(String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  void login() {
    if (email.text.isEmpty || password.text.isEmpty) {
      show("Maydonlarni to‘ldiring");
      return;
    }
    show("LOGIN SUCCESS ✅");
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.04),
                child: Column(
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
                            width: w * 0.4,
                            fit: BoxFit.contain,
                          ),
                          const Spacer(),
                          AppIcon(icon: 'person2'),
                          const SizedBox(width: 12),
                          AppIcon(icon: 'menu'),
                          const SizedBox(width: 12),
                          AppIcon(icon: "like"),
                          const SizedBox(width: 12),
                          AppIcon(icon: 'cart'),
                        ],
                      ),
                    ),

                    /// SEARCH
                    Row(
                      children: [
                        Container(
                          height: 46,
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Center(
                            child: AppText(
                              text: "КАТАЛОГ",
                              color: Colors.white,
                              size: 12,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 46,
                            padding: const EdgeInsets.symmetric(horizontal: 14),
                            decoration: BoxDecoration(
                              color: const Color(0xffF3F4F6),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.blue, width: 2),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: "Поиск...",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 15),

                    /// TITLE
                    const AppText(
                      text: "Авторизация",
                      size: 28,
                      weight: FontWeight.w700,
                    ),

                    /// FORM
                    Container(
                      margin: const EdgeInsets.all(12),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppColor.grey),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppInput(
                            title: "Email или логин",
                            hint: "Введите данные",
                            controller: email,
                          ),

                          AppInput(
                            title: "Пароль",
                            hint: "Введите пароль",
                            controller: password,
                            isPassword: true,
                            obscure: hide,
                            onToggle: () => setState(() => hide = !hide),
                          ),

                          const SizedBox(height: 10),

                          GestureDetector(
                            onTap: () => show("Forgot password"),
                            child: const AppText(
                              text: "Восстановить пароль",
                              size: 13,
                              color: Colors.blue,
                            ),
                          ),

                          const SizedBox(height: 15),

                          SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: login,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff186FD4),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Text(
                                "АВТОРИЗОВАТЬСЯ",
                                style: TextStyle(color: AppColor.white),
                              ),
                            ),
                          ),

                          Row(
                            children: [
                              Checkbox(
                                value: remember,
                                onChanged: (v) => setState(() => remember = v!),
                              ),
                              const AppText(text: "Запомнить меня", size: 12),
                            ],
                          ),

                          const SizedBox(height: 20),

                          /// REGISTER BLOCK
                          Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset('assets/icons/plus.svg'),SizedBox(width: 10,),
                                  Text(
                                    "Еще нет аккаунта?",
                                    style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              
                              const SizedBox(height: 10),
                              
                              Row(
                                                   
                                children: [
                                  Text(
                                    "Регистрация на сайте",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    " позволяет ",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: AppColor.ochroqBlackText,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                " получить доступ к статусу и истории \n вашего заказа. Просто заполните \n поля ниже, и вы получите учетную \n запись. \n            \n Мы запрашиваем у вас только \n информацию, необходимую для \n того, чтобы сделать процесс \ покупки более быстрым и легким. ",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                               color: AppColor.ochroqBlackText,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 10),

                          SizedBox(
                            width: double.infinity,
                            height: 56,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff0B1F33),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "ЗАРЕГИСТРИРОВАТЬСЯ",
                                    style: TextStyle(color: AppColor.white),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.chevron_right),
                                    color: AppColor.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
