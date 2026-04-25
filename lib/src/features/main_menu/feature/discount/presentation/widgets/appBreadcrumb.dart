import 'package:flutter/material.dart';
import 'package:practice_app/src/core/const/app_colors.dart';

import '../../../../../../core/widgets/app_text.dart';
class AppBreadcrumb extends StatefulWidget {
  final String first;
  final String second;
  final VoidCallback? onFirstTap;
  final VoidCallback? onSecondTap;

  const AppBreadcrumb({
    super.key,
    required this.first,
    required this.second,
    this.onFirstTap,
    this.onSecondTap,
  });

  @override
  State<AppBreadcrumb> createState() => _AppBreadcrumbState();
}

class _AppBreadcrumbState extends State<AppBreadcrumb> {
  int activeIndex = 1; // 👈 default: second active (Акции)

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// FIRST
        GestureDetector(
          onTap: () {
            setState(() => activeIndex = 0);
            widget.onFirstTap?.call();
          },
          child: AppText(
            text: widget.first,
            size: 13,
            height: 1.5,

            weight: FontWeight.w500,
            color: activeIndex == 0
                ? AppColor.black
                :AppColor.grey,
          ),
        ),

        const SizedBox(width: 6),

        /// SLASH
        const AppText(
          text: "/",
          height: 1.5,
          size: 13,
          color: Colors.grey,
          weight: FontWeight.w400,
        ),

        const SizedBox(width: 6),

        /// SECOND
        GestureDetector(
          onTap: () {
            setState(() => activeIndex = 1);
            widget.onSecondTap?.call();
          },
          child: AppText(
            text: widget.second,
            size: 13,
            height: 1.5,
            weight: FontWeight.w400,
            color: activeIndex == 1
                ? AppColor.textBlack
                : Colors.grey,
          ),
        ),
      ],
    );
  }
}