import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../../core/widgets/custom_drawer.dart';
import '../../../../../../core/widgets/home_header.dart';
import '../../../../../../core/widgets/order_bottom_sheet.dart';
import '../../../discount/presentation/widgets/custom_sub.dart';
import '../../../payment/presentation/widgets/promo_card.dart';
import '../widgets/delivery_content.dart';
import '../widgets/delivery_header.dart';
import '../widgets/delivery_rules.dart';

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({super.key});

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

                  DeliveryHeader(),

                  SizedBox(height: 20),

                  DeliveryContent(), // 🔥 asosiy text

                  SizedBox(height: 20),

                  DeliveryRules(), // 🔥 bullet + qoidalar
                ],
              ),
            ),

            /// 🔹 PROMO (sen yozgan)
            PromoSection(),

            /// 🔹 SUBSCRIBE (sen yozgan)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SubscribeSection(),
            ),

            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
