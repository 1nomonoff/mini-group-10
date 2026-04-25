import 'package:flutter/material.dart';

import '../../../../../../core/widgets/app_text.dart';

class DeliveryRules extends StatelessWidget {
  const DeliveryRules({super.key});

  @override
  Widget build(BuildContext context) {
    final rules = [
      "Доставка осуществляется после полной оплаты",
      "При доставке просьба обеспечить подъезд",
      "Выгрузка и подъем товара не входят",
      "Проверяйте товар при получении",
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: rules.map((e) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 6),
                width: 6,
                height: 6,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(child: AppText(text: e, height: 1.5)),
            ],
          ),
        );
      }).toList(),
    );
  }
}