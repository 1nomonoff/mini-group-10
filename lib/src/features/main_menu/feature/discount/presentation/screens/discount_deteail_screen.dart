import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../../../../core/widgets/app_text.dart';
import '../../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../../core/widgets/custom_drawer.dart';
import '../../../../../../core/widgets/home_header.dart';
import '../../../../../../core/widgets/order_bottom_sheet.dart';
import '../../data/fake_model/discount_model.dart';
import '../widgets/appBreadcrumb.dart';
import '../widgets/custom_sub.dart';
import '../widgets/discount_card.dart';

class DiscountDetailScreen extends StatelessWidget {
  final DiscountModel data;

  const DiscountDetailScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onCallTap: () => showOrderDialog(context),
      ),
      drawer: CustomDrawer(
        onCallPressed: () => showOrderDialog(context),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// HEADER
            const HomeHeader(),

            /// CONTENT
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12),

                  /// BREADCRUMB
                  const AppBreadcrumb(
                    first: "Стройоптторг",
                    second: "Акции",
                  ),

                  const SizedBox(height: 16),

                  /// TITLE
                  AppText(
                    text: data.title,
                    size: 24,
                    weight: FontWeight.w700,
                    height: 1.2,
                  ),

                  const SizedBox(height: 12),

                  /// META
                  Row(
                    children: const [
                      AppText(
                        text: "АКЦИЯ",
                        size: 12,
                        weight: FontWeight.w600,
                        color: Colors.black54,
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.circle, size: 4, color: Colors.grey),
                      SizedBox(width: 8),
                      AppText(
                        text: "Действует до 1 октября 2023",
                        size: 12,
                        color: Colors.grey,
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  /// DESCRIPTION
                  AppText(
                    text: data.description,
                    height: 1.5,
                  ),

                  const SizedBox(height: 16),

                  /// IMAGE
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: CachedNetworkImage(
                      imageUrl: data.image,
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      placeholder: (_, __) => const SizedBox(
                        height: 180,
                        child: Center(child: CircularProgressIndicator()),
                      ),
                      errorWidget: (_, __, ___) => Container(
                        height: 180,
                        color: Colors.grey.shade300,
                        child: const Icon(Icons.broken_image),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// SUBTITLE
                  const AppText(
                    text: "Что мы предлагаем:",
                    size: 20,
                    weight: FontWeight.w700,
                  ),

                  const SizedBox(height: 10),

                  /// TEXT BLOCK
                  const AppText(
                    text:
                    "Широкий ассортимент качественных лаков и красок для любых поверхностей.\n"
                        "Разнообразие цветов и оттенков.\n"
                        "Продукция от проверенных производителей.",
                    height: 1.5,
                  ),

                  const SizedBox(height: 16),

                  /// PROMO TITLE
                  const AppText(
                    text: "Промокод для скидки:",
                    weight: FontWeight.w600,
                  ),

                  const SizedBox(height: 10),

                  /// PROMO BOX + COPY
                  GestureDetector(
                    onTap: () {
                      Clipboard.setData(
                        const ClipboardData(text: "LAKOART20"),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Скопировано")),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          AppText(
                            text: "LAKOART20",
                            color: Colors.blue,
                            weight: FontWeight.w600,
                          ),
                          SizedBox(width: 6),
                          Icon(Icons.copy, size: 16),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  /// RELATED
                  DiscountCard(
                    title: "Все для отопления",
                    percent: "-30%",
                    description: "",
                    image: data.image,
                    isDetail: true,
                  ),

                  const SizedBox(height: 16),

                  DiscountCard(
                    title: "Лакокрасочные материалы",
                    percent: "-30%",
                    description: "",
                    image: data.image,
                    isDetail: true,

                  ),

                  const SizedBox(height: 24),

                  /// SUBSCRIBE
                  const SubscribeSection(),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}