import 'package:flutter/material.dart';

import '../../../../../../core/widgets/app_text.dart';

class ReturnContent extends StatelessWidget {
  const ReturnContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text:
          "Возврат или обмен товара надлежащего качества возможен...",
          height: 1.6,
        ),
        SizedBox(height: 12),
        AppText(
          text:
          "Для этого достаточно приехать в часы работы...",
          height: 1.6,
        ),
      ],
    );
  }
}