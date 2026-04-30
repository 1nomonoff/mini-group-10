import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice_app/src/core/const/color/AppColor.dart';
import 'package:practice_app/src/features/auth/presentation/widgets/AppIcon.dart';
import 'package:practice_app/src/features/auth/presentation/widgets/AppInput.dart';
import 'package:practice_app/src/features/auth/presentation/widgets/AppText.dart';
import 'package:practice_app/src/features/auth/presentation/widgets/custom_appbar.dart';
import 'package:practice_app/src/features/auth/presentation/widgets/custom_drawer.dart';
import 'package:practice_app/src/features/auth/presentation/widgets/order_bottom_sheet.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
      backgroundColor: Colors.white,
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.04),
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
                                AppIcon(icon: 'person', size: 27),
                                const SizedBox(width: 12),
                                AppIcon(icon: 'menu', size: 25),
                                const SizedBox(width: 12),

                                Stack(
                                  children: [
                                    AppIcon(icon: "like", size: 25),
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
                                    AppIcon(icon: 'cart', size: 25),
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
                        text: "Регистрация",
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppInput(
                              title: "Email",
                              hint: "Введите email",
                              controller: email,
                            ),

                            AppInput(
                              title: "Номер телефона",
                              hint: "+7 (...)",
                              controller: phone,
                            ),

                            AppInput(
                              title: "ФИО",
                              hint: "Ваше имя",
                              controller: name,
                            ),

                            AppInput(
                              title: "Регион",
                              hint: "Регион",
                              controller: region,
                            ),

                            AppInput(
                              title: "Пароль",
                              hint: "Введите пароль",
                              controller: password,
                              isPassword: true,
                              obscure: hide1,
                              onToggle: () => setState(() => hide1 = !hide1),
                            ),

                            AppInput(
                              title: "Подтвердите пароль",
                              hint: "qwerty123",
                              controller: confirm,
                              isPassword: true,
                              obscure: hide2,
                              onToggle: () => setState(() => hide2 = !hide2),
                            ),

                            Row(
                              children: [
                                Checkbox(
                                  value: agree1,
                                  onChanged: (v) => setState(() => agree1 = v!),
                                ),
                                const Expanded(
                                  child: AppText(
                                    text: "Согласен с условиями обслуживания",
                                    size: 12,
                                    color: Color(0xff696D70),
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                Checkbox(
                                  value: agree2,
                                  onChanged: (v) => setState(() => agree2 = v!),
                                ),
                                Expanded(
                                  child: Text.rich(
                                    TextSpan(
                                      text: "Согласен с обработкой данных ",
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff696D70),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "политикой конфиденциальности",
                                          style: const TextStyle(
                                            color: Colors.blue,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.pushReplacementNamed(
                                                context,
                                                '/politika',
                                              );
                                            },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 15),

                            SizedBox(
                              width: double.infinity,
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
                                  "ЗАРЕГИСТРИРОВАТЬСЯ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),

                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              padding: const EdgeInsets.all(16),

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /// 🔥 TITLE + ICON
                                  Row(
                                    children: [
                                      const SizedBox(width: 10),
                                      SvgPicture.asset('assets/icons/plus.svg'),
                                      SizedBox(width: 10),
                                      const AppText(
                                        text: "Уже есть аккаунт?",
                                        size: 24,
                                        weight: FontWeight.w600,
                                      ),
                                    ],
                                  ),

                                  const SizedBox(height: 15),

                                  /// 🔥 DESCRIPTION
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 38.0,
                                    ),
                                    child: const AppText(
                                      text:
                                          "Перейдите к авторизации если у вас уже есть зарегистрированный аккаунт.",
                                      size: 14,
                                      color: Colors.grey,
                                    ),
                                  ),

                                  const SizedBox(height: 10),

                                  /// 🔥 BUTTON
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 38.0,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 56,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color(
                                            0xff0B1F33,
                                          ), // 🔥 dark color
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Navigator.pushReplacementNamed(
                                                  context,
                                                  '/avtorizatsiya',
                                                );
                                              },
                                              child: const AppText(
                                                text: "АВТОРИЗОВАТЬСЯ",
                                                color: Colors.white,
                                                weight: FontWeight.w600,
                                              ),
                                            ),
                                            const SizedBox(width: 8),
                                            const Icon(
                                              Icons.arrow_forward_ios,
                                              size: 16,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
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
              Container(
                color: const Color(0xffF5F5F5),
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// 🔥 TOP BLOCK
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/Logo.png", width: 120),

                        const Spacer(),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            AppText(text: "Email:", size: 12),
                            AppText(
                              text: "info@stroiotorg.ru",
                              size: 12,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    /// PHONE + BUTTON
                    Row(
                      children: [
                        const AppText(
                          text: "8 800 444 00 65",
                          weight: FontWeight.w600,
                        ),

                        const Spacer(),

                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.red),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const AppText(
                            text: "ЗАКАЗАТЬ ЗВОНОК",
                            size: 11,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    /// 🔥 INFORMATION
                    Divider(color: Color(0xffDCE1E7), height: 1),
                    const SizedBox(height: 10),

                    Row(
                      children: [
                        const AppText(
                          size: 17,
                          text: "Информация",
                          weight: FontWeight.w600,
                        ),
                        Spacer(),
                        Icon(
                          CupertinoIcons.chevron_down,
                          color: AppColor.black,
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),
                    Divider(color: Color(0xffDCE1E7), height: 1),

                    const SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              AppText(text: "О компании"),
                              AppText(text: "Доставка"),
                              AppText(text: "Отзывы"),
                              AppText(text: "Новости"),
                              AppText(text: "Вход / Регистрация"),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: const [
                              AppText(text: "Оплата"),
                              AppText(text: "Возврат"),
                              AppText(text: "Вопрос-ответ"),
                              AppText(text: "Контакты"),
                              AppText(text: "Все акции"),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),
                    Divider(color: Color(0xffDCE1E7), height: 1),
                    const SizedBox(height: 10),

                    Row(
                      children: [
                        const AppText(
                          text: "Каталог",
                          weight: FontWeight.w600,
                          size: 17,
                        ),
                        Spacer(),
                        Icon(
                          CupertinoIcons.chevron_down,
                          color: AppColor.black,
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),
                    Divider(color: Color(0xffDCE1E7), height: 1),

                    /// 💳 PAYMENT
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 57,

                        child: Image.asset(
                          "assets/images/banks.png",
                          height: 20,
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    /// 🔥 SUBSCRIBE
                    const AppText(
                      text: "Подпишитесь на рассылку и будьте в курсе!",
                      size: 15,
                      weight: FontWeight.w600,
                    ),

                    const SizedBox(height: 10),

                    Container(
                      height: 56,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Ваш email",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    /// 🔥 FOOTER TEXT
                    const AppText(
                      text:
                          "© 2003-2023 Интернет-магазин ООО «Стройоптторг» р/с 40702810360000102415 в Ставропольское отделение №5230 ПАО Сбербанк, БИК 040702615",
                      size: 10,
                      color: Colors.grey,
                    ),

                    const SizedBox(height: 6),

                    Center(
                      child: const AppText(
                        text: "Политика конфиденциальности",
                        size: 10,
                        color: Colors.blue,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 18.0,
                        horizontal: 30,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        height: 22,

                        child: Image.asset(
                          "assets/images/auth_logo.png",
                          height: 20,
                        ),
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
