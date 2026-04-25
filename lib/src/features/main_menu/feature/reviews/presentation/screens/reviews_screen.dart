import 'package:flutter/material.dart';
import 'package:practice_app/src/features/main_menu/feature/reviews/presentation/widgets/reviews_header.dart';

import '../../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../../core/widgets/custom_drawer.dart';
import '../../../../../../core/widgets/home_header.dart';
import '../../../../../../core/widgets/order_bottom_sheet.dart';
import '../../../discount/presentation/widgets/custom_sub.dart';
import '../../../payment/presentation/widgets/promo_card.dart';
import '../widgets/reviews_list.dart';
class ReviewsScreen extends StatefulWidget {
  const ReviewsScreen({super.key});

  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(onCallTap: () => showOrderDialog(context)),
      drawer: CustomDrawer(onCallPressed: () => showOrderDialog(context)),

      body:SingleChildScrollView(
        child: Column(
          children: [
            const HomeHeader(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 10),

                  ReviewsHeader(),

                  const SizedBox(height: 20),

                  ReviewsList(), // 🔥 SHUNI QO‘SH

                  SizedBox(height: 20),



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
