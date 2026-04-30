import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final VoidCallback? onCallPressed;

  const CustomDrawer({super.key, this.onCallPressed});

  @override
  Widget build(BuildContext context) {
    return Drawer(


      backgroundColor: Colors.white,
      width: MediaQuery.of(context).size.width * 0.90,
      child: SafeArea(
        child: Column(
          children: [

            /// 🔹 HEADER
            Padding(
              padding: const EdgeInsets.only(left: 25,top: 28,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Меню",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2F6FC),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.close, size: 26),
                      onPressed: () => Navigator.pop(context),
                    ),
                  )
                ],
              ),
            ),

            const Divider(height: 1),

            /// 🔹 MENU LIST
            Expanded(
              child: ListView(
                children: [
                  _DrawerItem(
                    title: "ВСЕ АКЦИИ",
                    icon: Icons.card_giftcard,
                    route: '/sales',
                  ),
                  _DrawerItem(title: "О КОМПАНИИ", route: '/about'),
                  _DrawerItem(title: "ОПЛАТА", route: '/payment'),
                  _DrawerItem(title: "ДОСТАВКА", route: '/delivery'),
                  _DrawerItem(title: "ВОЗВРАТ", route: '/refund'),
                  _DrawerItem(title: "ОТЗЫВЫ", route: '/reviews'),
                  _DrawerItem(title: "ВОПРОС-ОТВЕТ", route: '/faq'),
                  _DrawerItem(title: "НОВОСТИ", route: '/news'),
                  _DrawerItem(title: "КОНТАКТЫ", route: '/contacts'),
                ],
              ),
            ),

            /// 🔹 FOOTER
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [

                  /// PHONE + BUTTON
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "8 800 444 00 65",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      SizedBox(width: 13,),
                      ElevatedButton(
                        onPressed: onCallPressed,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFE2E8F0),
                          foregroundColor: const Color(0xFF186FD4),
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          "ЗАКАЗАТЬ ЗВОНОК",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 13),

                  /// WORK TIME
                  const Text(
                    "Ежедневно, с 8:00 до 18:00",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color(0xff4E5760),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// 🔹 ITEM
class _DrawerItem extends StatelessWidget {
  final String title;
  final IconData? icon;
  final String route; // 🔥 qo‘shildi

  const _DrawerItem({
    required this.title,
    required this.route,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: icon != null ? Icon(icon, size: 20) : null,
          title: Text(
            title,
            style: const TextStyle(fontSize: 14,color: Color(0xff2E3032,),fontWeight: FontWeight.w600),
          ),
          onTap: () {
            Navigator.pop(context); // 🔥 drawer yopiladi
            Navigator.pushNamed(context, route); // 🔥 route ga o‘tadi
          },
        ),
        const Divider(height: 1),
      ],
    );
  }
}