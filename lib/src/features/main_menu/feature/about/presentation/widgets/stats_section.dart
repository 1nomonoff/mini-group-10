import 'package:flutter/material.dart';

import '../../../../../../core/widgets/app_text.dart';
class StatsSection extends StatelessWidget {
  const StatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff186FD4)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Positioned(
            right: -15,
            bottom: -10,
            child: Image.asset(
              'assets/images/ghome.png',
              width: 260,
              height: 280,
              fit: BoxFit.contain,
            ),
          ),

          /// 🔹 CONTENT
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0,vertical: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// TITLE
                const Center(
                  child: AppText(
                    text: "Сегодня",
                    size: 23,
                    weight: FontWeight.w600,
                    height: 1.15,
                    color: Color(0xff186FD4),
                  ),
                ),

                const SizedBox(height: 16),

                /// STATS
                const StatItem(
                  value: "17 805,3 м²",
                  subtitle: "торговых и складских помещений",
                ),
                SizedBox(height: 12),

                const StatItem(
                  value: "50 000+",
                  subtitle: "наименований товаров",
                ),
                SizedBox(height: 12),

                const StatItem(
                  value: "2 500+",
                  subtitle: "постоянных клиентов",
                ),
                SizedBox(height: 12),

                const StatItem(
                  value: "440",
                  subtitle: "опытных сотрудников",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StatItem extends StatelessWidget {
  final String value;
  final String subtitle;

  const StatItem({
    super.key,
    required this.value,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// 🔵 BIG NUMBER
        AppText(
          text: value,
          size: 24,
          height: 1.1,
          weight: FontWeight.w700,
          color: Color(0xff186FD4),
        ),

        const SizedBox(height: 10),

        /// 🔸 subtitle
        AppText(
          text: "- $subtitle",
          size: 15,
          height: 1.5,
        ),
      ],
    );
  }
}