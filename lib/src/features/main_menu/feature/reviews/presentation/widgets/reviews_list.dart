import 'package:flutter/material.dart';

import '../../../../../../core/widgets/app_text.dart';

class ReviewsList extends StatelessWidget {
  const ReviewsList({super.key});

  @override
  Widget build(BuildContext context) {
    final reviews = [
      {
        "name": "Оксана Гончарова",
        "date": "2.01.2022",
        "text": "Просто шикарный магазин...",
        "images": [
          "https://picsum.photos/200",
          "https://picsum.photos/201",
        ],
      },
      {
        "name": "Василий",
        "date": "16.06.2022",
        "text": "Очень рад сотрудничеству...",
        "images": [
          "https://picsum.photos/202",
        ],
      },
      {
        "name": "Иван",
        "date": "10.05.2022",
        "text": "Все отлично!",
      },
    ];

    return Column(
      children: reviews.map((e) {
        return ReviewItem(
          name: e["name"] as String,
          date: e["date"] as String,
          text: e["text"] as String,
          images: e["images"] as List<String>?,
        );
      }).toList(),
    );
  }
}



class ReviewItem extends StatelessWidget {
  final String name;
  final String date;
  final String text;
  final List<String>? images;

  const ReviewItem({
    super.key,
    required this.name,
    required this.date,
    required this.text,
    this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE3E7ED)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// NAME + DATE
          Row(
            children: [
              Expanded(
                child: AppText(
                  text: name,
                  weight: FontWeight.w600,
                ),
              ),
              AppText(
                text: date,
                size: 12,
                color: Colors.grey,
              ),
            ],
          ),

          const SizedBox(height: 10),

          /// TEXT
          AppText(
            text: text,
            height: 1.5,
          ),

          /// IMAGES
          if (images != null && images!.isNotEmpty) ...[
            const SizedBox(height: 12),

            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: images!
                  .map(
                    (img) => ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    img,
                    width: 90,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              )
                  .toList(),
            ),
          ],
        ],
      ),
    );
  }
}