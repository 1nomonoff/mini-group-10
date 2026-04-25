


import 'package:flutter/material.dart';

import '../../../../../../core/widgets/app_text.dart';

class ReturnBullets extends StatelessWidget {
  const ReturnBullets({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      "подтверждающих покупку и оплату товара",
      "документа подтверждающего личность",
    ];

    return Column(
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
              Expanded(child: AppText(text: e)),
            ],
          ),
        );
      }).toList(),
    );
  }
}