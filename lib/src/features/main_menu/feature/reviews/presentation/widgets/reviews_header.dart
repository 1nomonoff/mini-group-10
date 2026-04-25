import 'package:flutter/material.dart';

import '../../../../../../core/widgets/app_text.dart';
import '../../../discount/presentation/widgets/appBreadcrumb.dart';

class ReviewsHeader extends StatelessWidget {
  const ReviewsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppBreadcrumb(
          first: "Стройоптторг",
          second: "Отзывы",
        ),
        SizedBox(height: 12),
        AppText(
          text: "Отзывы",
          size: 28,
          weight: FontWeight.w700,
        ),
      ],
    );
  }
}