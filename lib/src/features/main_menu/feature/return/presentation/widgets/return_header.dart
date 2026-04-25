import 'package:flutter/material.dart';

import '../../../../../../core/widgets/app_text.dart';
import '../../../discount/presentation/widgets/appBreadcrumb.dart';

class ReturnHeader extends StatelessWidget {
  const ReturnHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppBreadcrumb(
          first: "Стройоптторг",
          second: "Возврат",
        ),
        SizedBox(height: 12),
        AppText(
          text: "Возврат",
          size: 28,
          weight: FontWeight.w700,
        ),
      ],
    );
  }
}