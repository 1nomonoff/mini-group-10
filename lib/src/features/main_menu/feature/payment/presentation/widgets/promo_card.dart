import 'package:flutter/material.dart';

import '../../../discount/data/fake_mock/discount_mock.dart';
import '../../../discount/presentation/widgets/discount_card.dart';

class PromoSection extends StatelessWidget {
  const PromoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          ...mockDiscounts.take(2).map(
                (item) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: DiscountCard(
                title: item.title,
                percent: item.percent,
                description: "", // 🔥 bu yer promo’da kerak emas
                image: item.image,
                isDetail: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}