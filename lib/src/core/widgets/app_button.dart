import 'package:flutter/material.dart';
import 'package:practice_app/src/core/widgets/app_text.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final bool isLoading;

  const AppButton({
    super.key,
    required this.text,
    this.onTap,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? null : onTap,
      child: Container(
        width: double.infinity,
        height: 56, // 👈 figmaga mos
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xff186FD4),
          borderRadius: BorderRadius.circular(8),
        ),
        child: isLoading
            ? const SizedBox(
          width: 22,
          height: 22,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: Colors.white,
          ),
        )
            : const AppText(
          size: 13,
          text: "ПОДПИСАТЬСЯ",
          color: Colors.white,
          weight: FontWeight.w700,
          height: 1.30,
        ),
      ),
    );
  }
}