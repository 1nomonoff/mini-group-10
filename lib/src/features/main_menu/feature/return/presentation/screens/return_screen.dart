import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../../core/widgets/custom_drawer.dart';
import '../../../../../../core/widgets/home_header.dart';
import '../../../../../../core/widgets/order_bottom_sheet.dart';
import '../../../discount/presentation/widgets/custom_sub.dart';
import '../../../payment/presentation/widgets/promo_card.dart';
import '../widgets/return_bullet.dart';
import '../widgets/return_content.dart';
import '../widgets/return_faq.dart';
import '../widgets/return_header.dart';

class ReturnScreen extends StatelessWidget {
  const ReturnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(onCallTap: () => showOrderDialog(context)),
      drawer: CustomDrawer(onCallPressed: () => showOrderDialog(context)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeHeader(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 10),

                  ReturnHeader(),

                  SizedBox(height: 20),

                  ReturnContent(),

                  SizedBox(height: 20),

                  ReturnBullets(),

                  SizedBox(height: 20),

                  ReturnFAQ(),
                ],
              ),
            ),

            const PromoSection(),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SubscribeSection(),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
