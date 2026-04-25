import 'package:flutter/material.dart';

import '../../../../../../core/widgets/app_text.dart';

class PaymentContent extends StatelessWidget {
  const PaymentContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: "При заказе доставки",
            size: 18,
            weight: FontWeight.w600,
          ),
          SizedBox(height: 12),
          AppText(
            text:
            "Банковской картой с помощью платежной системы на сайте...",
            height: 1.6,
          ),
        ],
      ),
    );
  }
}