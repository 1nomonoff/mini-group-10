import 'package:flutter/material.dart';

import '../../../../../../core/widgets/app_text.dart';

class DeliveryContent extends StatelessWidget {
  const DeliveryContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text:
          "Мы всегда готовы доставить приобретенный Вами товар в удобное для Вас время.",
          height: 1.6,
        ),
        SizedBox(height: 12),

        AppText(
          text:
          "Стоимость доставки товаров определяется исходя из веса, габаритов и удаленности.",
          height: 1.6,
        ),

        SizedBox(height: 16),

        AppText(
          text:
          "Наш интернет-магазин предлагает несколько вариантов получения товара:",
          weight: FontWeight.w600,
          size: 16,
        ),

        SizedBox(height: 12),

        AppText(
          text: "1. Самовывоз с территории компании.",
          weight: FontWeight.w600,
        ),

        SizedBox(height: 8),

        AppText(
          text:
          "Вы можете самостоятельно забрать заказанные товары с наших складов.",
          height: 1.6,
        ),
      ],
    );
  }
}