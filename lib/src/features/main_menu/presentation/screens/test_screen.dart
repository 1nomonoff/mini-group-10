import 'package:flutter/material.dart';
import 'package:practice_app/src/core/widgets/app_button.dart';
import '../../../../core/widgets/app_text.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_drawer.dart';
import '../../../../core/widgets/home_header.dart';
import '../../../../core/widgets/order_bottom_sheet.dart';
import '../../feature/discount/data/fake_mock/discount_mock.dart';
import '../../feature/discount/presentation/screens/discount_deteail_screen.dart';
import '../../feature/discount/presentation/widgets/discount_card.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
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

      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),

                  /// TITLE
                  const Text(
                    "Акции",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 16),

                  /// LIST
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: mockDiscounts.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 16),
                    itemBuilder: (context, index) {
                      final item = mockDiscounts[index];

                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => DiscountDetailScreen(data: item),
                            ),
                          );
                        },
                        child: DiscountCard(
                          title: item.title,
                          percent: item.percent,
                          description: item.description,
                          image: item.image,
                        ),
                      );
                    },
                  ),

                  /// 🔥 PAGINATION


                  const SizedBox(height: 20),

                  /// 🔥 SUBSCRIBE
                  Center(
                    child: const AppText(
                      text: "Подпишитесь на рассылку",
                      size: 18,
                      weight: FontWeight.w600,
                      align: TextAlign.center,
                    ),
                  ),

                  const SizedBox(height: 8),

                  /// DESCRIPTION
                  Center(
                    child: const AppText(
                      text:
                          "Регулярные скидки и спецпредложения, а так же новости компании.",
                      align: TextAlign.center,
                      height: 1.4,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 13),

                  /// INPUT
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                  ),

                  const SizedBox(height: 13),

                  /// BUTTON
                  AppButton(text: 'ПОДПИСАТЬСЯ'),

                  const SizedBox(height: 30),

                  /// CHECKBOX
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Transform.scale(
                        scale: 1.4,
                        child: Checkbox(
                          value: false,
                          side: BorderSide(
                            color: Color(0xffDFE0E2),
                            width: 1,
                          ),
                          onChanged: (_) {},
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Expanded(
                        child: AppText(
                          text:
                              "Согласен с обработкой персональных данных в соответствии с политикой конфиденциальности",
                          size: 13,
                          height: 1.6,
                          color: Color(0xff696D70),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 35),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
