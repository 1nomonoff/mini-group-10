import 'package:flutter/material.dart';

import '../../../../../../core/widgets/app_text.dart';
import '../../../discount/presentation/widgets/appBreadcrumb.dart';

class PaymentHeader extends StatelessWidget {
  const PaymentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          AppBreadcrumb(
            first: "Стройоптторг",
            second: "Оплата",
          ),
          SizedBox(height: 12),
          AppText(
            text: "Оплата",
            size: 28,
            weight: FontWeight.w700,
          ),
        ],
      ),
    );
  }
}