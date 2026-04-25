import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../../core/widgets/custom_drawer.dart';
import '../../../../../../core/widgets/home_header.dart';
import '../../../../../../core/widgets/order_bottom_sheet.dart';
import '../../../discount/presentation/widgets/custom_sub.dart';
import '../widgets/pament_header.dart';
import '../widgets/pay_bullet.dart';
import '../widgets/paymentextra.dart';
import '../widgets/paymet_text.dart';
import '../widgets/promo_card.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

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
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 10),
                  PaymentHeader(),

                  SizedBox(height: 20),
                  PaymentContent(),

                  SizedBox(height: 24),
                  PaymentBullets(),

                  SizedBox(height: 24),
                  PaymentExtra(),

                  SizedBox(height: 24),
                ],
              ),
            ),

            /// 🔹 FULL WIDTH PROMO
            const PromoSection(),

            /// 🔹 SUBSCRIBE
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
