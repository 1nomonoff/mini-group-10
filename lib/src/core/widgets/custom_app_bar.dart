import 'package:flutter/material.dart';
import 'package:practice_app/src/core/const/app_colors.dart';
import 'package:practice_app/src/core/widgets/app_icon.dart';
import 'package:practice_app/src/core/widgets/app_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onCallTap;

  const CustomAppBar({super.key, required this.onCallTap});

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
                  icon: AppIcon(
                    icon: 'menu',
                    color: AppColor.black,
                    width: 14,
                    height: 12,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            ),

            /// PHONE
             AppText(text: "8 800 444 00 65", weight: FontWeight.w600,color: AppColor.black,),

            /// BUTTON
            GestureDetector(
              onTap: onCallTap,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F6FC),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const AppText(
                  text: 'ЗАКАЗАТЬ ЗВОНОК',
                  color: Color(0xff2A5E8D),
                  weight: FontWeight.w700,
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
