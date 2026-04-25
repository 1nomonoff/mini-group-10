import 'package:flutter/material.dart';

import '../../../../../../core/widgets/app_text.dart';

class SubscribeSection extends StatelessWidget {
  const SubscribeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          const AppText(
            text: "Подпишитесь на рассылку",
            size: 18,
            weight: FontWeight.w600,
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              hintText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {},
            child: const Text("ПОДПИСАТЬСЯ"),
          ),
        ],
      ),
    );
  }
}