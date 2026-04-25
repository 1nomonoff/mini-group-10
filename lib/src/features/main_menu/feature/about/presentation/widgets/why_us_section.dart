import 'package:flutter/material.dart';
import 'package:practice_app/src/core/const/app_colors.dart';
import '../../../../../../core/widgets/app_text.dart';
import '../../../../../../core/widgets/app_icon.dart';

class WhyUsSection extends StatelessWidget {
  const WhyUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final whyList = [
      {
        "title": "Оплата любым удобным способом",
        "subtitle":
        "Выбирайте любой способ оплаты для максимального комфорта при покупках у нас.",
      },
      {
        "title": "Большой выбор товаров в каталоге",
        "subtitle":
        "Наш каталог насыщен разнообразными товарами, чтобы удовлетворить ваши потребности.",
      },
      {
        "title": "Осуществляем быструю доставку",
        "subtitle":
        "Мы оперативно доставим ваш заказ, чтобы вы могли наслаждаться покупкой как можно скорее.",
      },
      {
        "title": "Делаем скидки на крупные покупки",
        "subtitle":
        "Наша система скидок работает для вашей выгоды, чем больше купили - больше сэкономили.",
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppText(
            text: "Почему именно мы",
            size: 22,
            weight: FontWeight.w700,
          ),

          const SizedBox(height: 20),

          ...whyList.asMap().entries.map((entry) {
            final index = entry.key;
            final item = entry.value;

            return Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: WhyItem(
                title: item["title"]!,
                subtitle: item["subtitle"]!,
                index: index,
              ),
            );
          }),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: AppText(
              text: "История ООО “Стройоптторг”",
              size: 26,
              weight: FontWeight.w700,
              color: AppColor.textBlack,
              align: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}



class WhyItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final int index;

  const WhyItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    const icons = [
      "payment",
      "catalog",
      "delivery",
      "discount",
    ];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// 🔵 ICON
              const SizedBox(height: 15),
        AppIcon(
          icon: icons[index],
          size: 52,
          color: const Color(0xff186FD4),
        ),

        const SizedBox(width: 15),


        /// 🔹 TEXT
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8,), 
              AppText(
                text: title,
                weight: FontWeight.w600,
                size: 17,
                color: Color(0xff3B3C3F),
                height: 1.35,
              ),

              const SizedBox(height: 6),

              AppText(
                text: subtitle,
                size: 15,
                color: Color(0xff6B6C72),
                height: 1.6,
              ),
            ],
          ),
        ),
      ],
    );
  }
}