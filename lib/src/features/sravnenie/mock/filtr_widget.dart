
import 'package:flutter/material.dart';

class SravnenieFilterSection extends StatelessWidget {
  final bool onlyDifference;
  final ValueChanged<bool> onChanged;

  const SravnenieFilterSection({
    super.key,
    required this.onlyDifference,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            "Сравнение",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
           SizedBox(height: 15),
          Container(
            height: 42,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffE5E5E5)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Шуруповерты"),
                Icon(Icons.keyboard_arrow_down, color: Colors.grey),
              ],
            ),
          ),
           SizedBox(height: 10),
          Row(
            children: [
              Radio<bool>(
                value: false,
                groupValue: onlyDifference,
                onChanged: (value) {
                  onChanged(value!);
                },
              ),
               Text("Все характеристики"),
            ],
          ),
          Row(
            children: [
              Radio<bool>(
                value: true,
                groupValue: onlyDifference,
                onChanged: (value) {
                  onChanged(value!);
                },
              ),
               Text("Только различия"),
            ],
          ),
        ],
      ),
    );
  }
}