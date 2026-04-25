import 'package:flutter/material.dart';

import '../../../../../../core/widgets/app_text.dart';

class PaymentExtra extends StatelessWidget {
  const PaymentExtra({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: "Наличными водителю",
            weight: FontWeight.w600,
          ),
          SizedBox(height: 10),
          AppText(
            text: "Наш менеджер позвонит вам и договорится...",
            height: 1.6,
          ),
        ],
      ),
    );
  }
}