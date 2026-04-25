import 'package:flutter/material.dart';
import 'package:practice_app/src/core/const/app_colors.dart';

import '../../../../../../core/widgets/app_text.dart';
import '../../../discount/presentation/widgets/appBreadcrumb.dart';
class AboutTextSection extends StatelessWidget {
  final String text;

  const AboutTextSection({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final paragraphs = text.split(RegExp(r'\n+'));

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBreadcrumb(
            first: "Стройоптторг",
            second: "О компании",
          ),

          const SizedBox(height: 16),

          const AppText(
            text: "О компании",
            size: 30,
            weight: FontWeight.w700,
            height: 1.1,
          ),

          const SizedBox(height: 19),

          /// 🔥 DYNAMIC TEXT
          ...paragraphs.asMap().entries.map((entry) {
            final index = entry.key;
            final p = entry.value;

            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: AppText(
                text: p.trim(),
                height: 1.6,
                size: index == 0 ? 18 : 14,
                weight: index == 0 ? FontWeight.w600 : FontWeight.w400,
                color: AppColor.textBlack,
              ),
            );
          }),



          const SizedBox(height: 6),
        ],
      ),
    );
  }
}

