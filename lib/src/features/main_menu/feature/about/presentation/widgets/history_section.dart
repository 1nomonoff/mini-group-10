import 'package:flutter/material.dart';

import '../../../../../../core/widgets/app_text.dart';

class HistorySection extends StatelessWidget {
  const HistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
      child: Column(
        children: [
          HistoryCard(
            title: "Компания ООО «Стройоптторг» была зарегистрирована...",
            points: [
              "Общая площадь земельного участка составляла 10 000 м².",
              "площадь складских помещений 850 м².",
              "численность сотрудников 10 человек.",
            ],
            year: '2003',
          ),

          SizedBox(height: 24),

          HistoryCard(
            year: '2005',
            title: "С годами компания динамично росла...",
            points: [
              "общая площадь базы составила 58 000 м²",
              "площадь складских помещений 5 200 м²",
              "численность коллектива возросла до 300 человек",
            ],
          ),
        ],
      ),
    );
  }
}

class HistoryCard extends StatelessWidget {
  final String year;
  final String title;
  final List<String> points;

  const HistoryCard({
    super.key,
    required this.year,
    required this.title,
    required this.points,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        /// 🔹 CARD
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffE6EEF6), width: 3),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(text: title, height: 1.5, weight: FontWeight.w500),

              const SizedBox(height: 12),

              ...points.map(
                (e) => Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// 🔴 DOT
                      Container(
                        margin: const EdgeInsets.only(top: 10.5),
                        width: 5,
                        height: 5,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(child: AppText(text: e, height: 1.8)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        /// 🔥 YEAR + LINES (ASOSIY FIX SHU!)
        Positioned(
          top: -18,
          left: 0,
          right: 0,
          child: Row(
            children: [
              const Expanded(child: SizedBox()),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                color: Colors.white, // borderni kesadi
                child: AppText(
                  text: year,
                  size: 26,
                  weight: FontWeight.w700,
                  color: Color(0xff186FD4),
                ),
              ),

              const Expanded(child: SizedBox()),
            ],
          ),
        ),
      ],
    );
  }
}
