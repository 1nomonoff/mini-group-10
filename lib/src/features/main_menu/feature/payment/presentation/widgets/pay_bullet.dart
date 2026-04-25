import 'package:flutter/material.dart';

import '../../../../../../core/widgets/app_text.dart';

class PaymentBullets extends StatelessWidget {
  const PaymentBullets({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      "МИР",
      "VISA International",
      "Mastercard Worldwide",
      "JCB"
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: items.map((e) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Container(
                  width: 6,
                  height: 6,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 8),
                AppText(text: e),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}