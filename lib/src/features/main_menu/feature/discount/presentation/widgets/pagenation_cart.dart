import 'package:flutter/material.dart';

import '../../../../../../core/widgets/app_text.dart';
class PaginationWidget extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final Function(int) onPageChanged;

  const PaginationWidget({
    super.key,
    required this.currentPage,
    required this.totalPages,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    int startPage = currentPage;

    if (startPage + 2 > totalPages) {
      startPage = totalPages - 2;
    }

    if (startPage < 1) startPage = 1;

    final pages = List.generate(3, (i) => startPage + i);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _box("←",
            onTap: currentPage > 1
                ? () => onPageChanged(currentPage - 1)
                : null),

        const SizedBox(width: 8),

        ...pages.map((p) => Padding(
          padding: const EdgeInsets.only(right: 8),
          child: _box(
            "$p",
            isActive: p == currentPage,
            onTap: () => onPageChanged(p),
          ),
        )),

        _box("→",
            onTap: currentPage < totalPages
                ? () => onPageChanged(currentPage + 1)
                : null),
      ],
    );
  }

  Widget _box(String text,
      {bool isActive = false, VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 57,
        height: 57,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isActive ? const Color(0xFF011120) : Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFFE5E7EB)),
        ),
        child: AppText(
          text: text,
          size: 16,
          weight: FontWeight.w500,
          color: isActive ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}