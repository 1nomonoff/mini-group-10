import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/widgets/app_text.dart';

class NewsSection extends StatelessWidget {
  const NewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// TITLE
          const AppText(
            text: "Последние новости",
            size: 20,
            weight: FontWeight.w700,
          ),

          const SizedBox(height: 16),

          /// LIST
          SizedBox(
            height: 260,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                return const NewsCard();
              },
            ),
          ),

          const SizedBox(height: 16),

          /// ARROWS
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _arrowButton(Icons.arrow_back_ios_new),
              const SizedBox(width: 12),
              _arrowButton(Icons.arrow_forward_ios),
            ],
          ),

          const SizedBox(height: 16),

          /// BUTTON
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const AppText(
                text: "Больше новостей",
                color: Colors.blue,
                weight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _arrowButton(IconData icon) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, size: 16),
    );
  }
}

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// IMAGE
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(
              imageUrl: "https://picsum.photos/300/200",
              height: 140,
              width: double.infinity,
              fit: BoxFit.cover,

              /// LOADING
              placeholder: (_, __) => const SizedBox(
                height: 140,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),

              /// ERROR
              errorWidget: (_, __, ___) => Container(
                height: 140,
                color: Colors.grey.shade300,
                alignment: Alignment.center,
                child: const Icon(Icons.broken_image),
              ),
            ),
          ),

          const SizedBox(height: 10),

          /// TITLE
          AppText(
            text: "Масштабное обновление каталога инструментов",
            weight: FontWeight.w600,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),

          const SizedBox(height: 6),

          /// DESCRIPTION
          AppText(
            text: "С радостью сообщаем вам о крупном пополнении...",
            size: 13,
            color: Color(0xff393939),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            weight: FontWeight.w400,
          ),

          const SizedBox(height: 6),

          /// DATE
          const AppText(
            text: "5 Августа 2023",
            size: 12,
            color: Color(0xff000000),
            weight: FontWeight.w400,

          ),
        ],
      ),
    );
  }
}