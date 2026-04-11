import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onCallTap;

  const CustomAppBar({
    super.key,
    required this.onCallTap,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        height: kToolbarHeight,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        color: Colors.white,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            /// 🔥 MENU (Builder ichida)
            Builder(
              builder: (context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer(); // 🔥 ishlaydi
                  },
                );
              },
            ),

            /// PHONE
            const Text(
              "8 800 444 00 65",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),

            /// BUTTON
            GestureDetector(
              onTap: onCallTap,
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFFE7ECF3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "ЗАКАЗАТЬ ЗВОНОК",
                  style: TextStyle(
                    color: Color(0xFF186FD4),
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}