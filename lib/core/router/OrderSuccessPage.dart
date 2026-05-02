import 'package:flutter/material.dart';

class OrderSuccessPage extends StatelessWidget {
  const OrderSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: const Text(
            'Оформление заказа',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.5,
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEAF4FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: const Text(
                      'Спасибо! Ваш заказ успешно оформлен.',
                      style: TextStyle(color: Color(0xFF2A6DB0), fontSize: 15),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Color(0xFFE0E0E0), width: 1.5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Номер заказа:',
                        style: TextStyle(
                          color: Color(0xFF6C757D),
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '#65754',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1A1A1A),
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Дата:',
                        style: TextStyle(
                          color: Color(0xFF6C757D),
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '14 Августа 2023',
                        style: TextStyle(
                          color: Color(0xFF2C3E50),
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Итого:',
                        style: TextStyle(
                          color: Color(0xFF6C757D),
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '36 829 ₽',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF2F80ED),
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Способ оплаты:',
                        style: TextStyle(
                          color: Color(0xFF6C757D),
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Оплата картой на сайте',
                        style: TextStyle(
                          color: Color(0xFF2C3E50),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0xFFE0E0E0),
                      width: 1.5,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Товар',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Color(0xFF1A1A1A),
                              ),
                            ),
                            Text(
                              'Итого',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Color(0xFF1A1A1A),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(height: 1, thickness: 1),
                      _item(
                        'Перфоратор универсальный Wander 1450W x1',
                        '7 899 ₽',
                      ),
                      _item(
                        'Перфоратор универсальный Wander 1450W x1',
                        '11 998 ₽',
                      ),
                      _item('Перфоратор универсальный Wander X x1', '9 033 ₽'),
                      _item(
                        'Перфоратор универсальный Wander X565 x1',
                        '7 899 ₽',
                      ),
                      const Divider(height: 1, thickness: 1),
                      _row('Сумма:', '43 829 ₽'),
                      _row('Доставка:', '0 ₽'),
                      _row('Способ доставки:', 'СДЭК, доставка курьером'),
                      _row('Способ оплаты:', 'Оплата картой на сайте'),
                      const Divider(height: 1, thickness: 1),
                      Padding(
                        padding: const EdgeInsets.all(14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Итого:',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF1A1A1A),
                              ),
                            ),
                            Text(
                              '43 829 ₽',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF2F80ED),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0xFFE0E0E0),
                      width: 1.5,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(14),
                        decoration: const BoxDecoration(
                          color: Color(0xFFF8F9FA),
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(11),
                          ),
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.location_on_outlined,
                              color: Color(0xFF2F80ED),
                              size: 18,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'АДРЕС ДОСТАВКИ',
                              style: TextStyle(
                                color: Color(0xFF2F80ED),
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Евгений Иванов',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1A1A1A),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '056734, Москва, Россия, улица Варшавская, 37/5, кв.574',
                              style: TextStyle(
                                color: Color(0xFF2C3E50),
                                fontSize: 14,
                                height: 1.4,
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Телефон',
                              style: TextStyle(
                                color: Color(0xFF6C757D),
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              '+7 (956) 373-46-33',
                              style: TextStyle(
                                color: Color(0xFF2C3E50),
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'Email',
                              style: TextStyle(
                                color: Color(0xFF6C757D),
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'exampleofemail@gmail.com',
                              style: TextStyle(
                                color: Color(0xFF2C3E50),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _item(String title, String price) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF2C3E50),
                  height: 1.3,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              price,
              style: const TextStyle(
                color: Color(0xFF2F80ED),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      const Divider(height: 1, thickness: 1),
    ],
  );
}

Widget _row(String left, String right) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          left,
          style: const TextStyle(color: Color(0xFF6C757D), fontSize: 14),
        ),
        Flexible(
          child: Text(
            right,
            textAlign: TextAlign.right,
            style: const TextStyle(color: Color(0xFF2C3E50), fontSize: 14),
          ),
        ),
      ],
    ),
  );
}
