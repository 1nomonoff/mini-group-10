import 'package:flutter/material.dart';
import 'package:practice_app/src/core/const/app_colors.dart';
import 'package:practice_app/src/core/widgets/app_text.dart';

class DiscountCard extends StatelessWidget {
  final bool isDetail;
  final String title;
  final double height;
  final String percent;
  final String description;
  final String image;

  const DiscountCard({
    super.key,
    this.isDetail = false,
    this.height = 180,
    required this.title,
    required this.percent,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// IMAGE + OVERLAY TEXT
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: SizedBox(
            height: isDetail ? 273 :height,
            width: double.infinity,
            child: Stack(
              children: [
                /// IMAGE (FULL COVER 🔥)
                Positioned.fill(child: Image.network(image, fit: BoxFit.cover)),

                /// OVERLAY
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withAlpha(40),
                          Colors.transparent,
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                    ),
                  ),
                ),

                /// TEXT
                Positioned.fill(
                  child: Padding(
                    padding: isDetail
                        ? const EdgeInsets.fromLTRB(20, 80, 150, 20)
                        : const EdgeInsets.all(20), // list
                    child: Column(
                      mainAxisAlignment: isDetail
                          ? MainAxisAlignment.center
                          : MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          text: title,
                          size: 22,
                          weight: FontWeight.w600,
                          color: AppColor.white,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 6),

                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFF011120),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: AppText(
                            text: "до $percent",
                            size: 14,
                            weight: FontWeight.w700,
                            color: AppColor.white,
                            height: 1.35,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 10),

        /// DESCRIPTION
        AppText(
          text: description,
          size: 20,
          maxLines: 3,
          height: 1.3,
          color: AppColor.textBlack,
          weight: FontWeight.w600,
          overflow: TextOverflow.ellipsis,
        ),

        const SizedBox(height: 6),

        /// LINK
        const Text(
          "Подробнее об акции",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 16,
            decoration: TextDecoration.underline,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
