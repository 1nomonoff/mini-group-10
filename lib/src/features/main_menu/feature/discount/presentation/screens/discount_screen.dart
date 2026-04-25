import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../../core/widgets/custom_drawer.dart';
import '../../../../../../core/widgets/home_header.dart';
import '../../../../../../core/widgets/order_bottom_sheet.dart';
import '../../data/fake_mock/discount_mock.dart';
import '../widgets/appBreadcrumb.dart';
import '../widgets/custom_sub.dart';
import '../widgets/discount_card.dart';
import '../widgets/pagenation_cart.dart';
import 'discount_deteail_screen.dart';

class DiscountScreen extends StatefulWidget {
  const DiscountScreen({super.key});

  @override
  State<DiscountScreen> createState() => _DiscountScreenState();
}

class _DiscountScreenState extends State<DiscountScreen> {

  int currentPage = 1;
  final int perPage = 5;

  @override
  Widget build(BuildContext context) {

    final start = (currentPage - 1) * perPage;
    final total = mockDiscounts.length;

    /// 🔥 LIMIT START
    final safeStart = start >= total ? 0 : start;

    /// 🔥 LIMIT END
    final safeEnd = (safeStart + perPage) > total
        ? total
        : safeStart + perPage;

    final currentList = mockDiscounts.sublist(safeStart, safeEnd);
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
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 12),
              child: AppBreadcrumb(
                first: "Стройоптторг",
                second: "Акции",

                onFirstTap: () {
                },

                onSecondTap: () {
                  print("Акции bosildi");
                },
              ),
            ),
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
                    itemCount: currentList.length,                    separatorBuilder: (_, __) => const SizedBox(height: 16),
                    itemBuilder: (context, index) {
                      final item = currentList[index];
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

                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 50,
                    ),
                    child:   PaginationWidget(
                      currentPage: currentPage,
                      totalPages: total,
                      onPageChanged: (page) {
                        setState(() {
                          currentPage = page;
                        });
                      },
                    ),
                  ),

                  const SubscribeSection(),

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
