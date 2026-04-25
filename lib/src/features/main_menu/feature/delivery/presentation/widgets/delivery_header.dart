import 'package:flutter/material.dart';

import '../../../../../../core/widgets/app_text.dart';
import '../../../discount/presentation/widgets/appBreadcrumb.dart';

class DeliveryHeader extends StatelessWidget {
  const DeliveryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppBreadcrumb(
          first: "Стройоптторг",
          second: "Доставка",
        ),
        SizedBox(height: 12),
        AppText(
          text: "Доставка",
          size: 28,
          weight: FontWeight.w700,
        ),
      ],
    );
  }
}