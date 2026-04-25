import 'package:flutter/material.dart';

import '../../../../../../core/widgets/app_text.dart';

class ReturnFAQ extends StatelessWidget {
  const ReturnFAQ({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      "Куда обращаться в случае поломки?",
      "Куда обращаться по гарантии?",
      "Есть ли гарантийный ремонт?",
      "Какой срок действия гарантии?",
    ];

    return Column(
      children: items.map((e) {
        return Container(
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(8),
          ),
          child: ExpansionTile(
            title: AppText(text: e),
            children: const [
              Padding(
                padding: EdgeInsets.all(12),
                child: AppText(
                  text: "Здесь будет ответ...",
                  height: 1.5,
                ),
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}